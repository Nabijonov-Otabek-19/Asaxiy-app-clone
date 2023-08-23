import 'package:asaxiy_clone/domain/repository/repository_impl.dart';
import 'package:asaxiy_clone/presentation/screens/home/bloc/home_bloc.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_offer.dart';
import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/network_call_handle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchBarController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();
  final _bloc = HomeBloc(RepositoryImpl());

  @override
  void initState() {
    _bloc.add(const HomeEvent.loadOffers());
    super.initState();
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: SearchBar(
                constraints: const BoxConstraints(maxHeight: 42, minHeight: 42),
                padding:
                    const MaterialStatePropertyAll(EdgeInsets.only(left: 8)),
                hintText: "Search",
                focusNode: searchFocusNode,
                controller: _searchBarController,
                leading: const Icon(Icons.search),
                textStyle: MaterialStatePropertyAll(TextStyle(color: gray)),
                onChanged: (value) {},
                surfaceTintColor: const MaterialStatePropertyAll(Colors.white),
                elevation: const MaterialStatePropertyAll(0.5),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              actions: [
                Image.asset(
                  "assets/images/ic_menu.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 14)
              ],
            ),
            body: GestureDetector(
              onTap: () {
                searchFocusNode.unfocus();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                color: background,
                child: Builder(builder: (context) {
                  if (state.status == Status.LOADING) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == Status.ERROR) {
                    return Center(
                        child: Text(state.error,
                            style: const TextStyle(
                                fontSize: 30, color: Colors.black)));
                  }
                  return Column(
                    children: [
                      WidgetOffer(offerList: state.offerList),
                    ],
                  );
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
