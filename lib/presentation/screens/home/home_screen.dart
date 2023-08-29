import 'package:asaxiy_clone/domain/repository/repository_impl.dart';
import 'package:asaxiy_clone/presentation/screens/home/bloc/home_bloc.dart';
import 'package:asaxiy_clone/presentation/screens/product_list/product_list_screen.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_appbar.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_categories.dart';
import 'package:asaxiy_clone/presentation/widgets/widget_offer.dart';
import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:asaxiy_clone/utils/network_call_handle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = HomeBloc(RepositoryImpl());

  @override
  void initState() {
    _bloc.add(const HomeEvent.loadOffers());
    super.initState();
  }

  @override
  void dispose() {
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
            appBar: widgetAppBarHomeMenu("assets/images/ic_document.png"),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              color: background,
              child: Builder(builder: (context) {
                if (state.status == Status.LOADING || state.offerList.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.status == Status.ERROR) {
                  return Center(
                    child: Text(
                      state.error,
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  );
                }
                return Column(
                  children: [
                    widgetOffer(state.offerList, (index) {
                      _bloc.add(HomeEvent.changeDotIndex(index));
                    }, state.activeIndex),
                    widgetCategories(
                      categories,
                      (category) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ProductListScreen(category: category)));
                      },
                    ),
                  ],
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
