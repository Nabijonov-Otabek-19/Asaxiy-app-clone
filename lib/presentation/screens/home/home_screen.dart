import 'package:asaxiy_clone/domain/repository/repository.dart';
import 'package:asaxiy_clone/main_provider.dart';
import 'package:asaxiy_clone/presentation/screens/home/bloc/home_bloc.dart';
import 'package:asaxiy_clone/presentation/screens/product_list/product_list_screen.dart';
import 'package:asaxiy_clone/presentation/screens/search/search_screen.dart';
import 'package:asaxiy_clone/presentation/shimmer/shimmer_categories.dart';
import 'package:asaxiy_clone/presentation/shimmer/shimmer_offers.dart';
import 'package:asaxiy_clone/presentation/widgets/home/widget_appbar.dart';
import 'package:asaxiy_clone/presentation/widgets/home/widget_categories.dart';
import 'package:asaxiy_clone/presentation/widgets/home/widget_offer.dart';
import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/constants.dart';
import 'package:asaxiy_clone/utils/network_call_handle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _bloc = HomeBloc(di.get<Repository>());

  @override
  void initState() {
    _bloc.add(const HomeEvent.loadOffers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: widgetAppBarHome(
              onSearchTap: () {
                // navigate to search screen
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ));
              },
              onIconTap: () {
                // navigate to Blog screen
              },
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: double.infinity,
              color: background,
              child: Builder(builder: (context) {
                if (state.status == Status.LOADING) {
                  return const Column(
                    children: [
                      ShimmerOffers(),
                      ShimmerCategories(),
                    ],
                  );
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
                        if (category == "Bo'limlar") {
                          context.read<MainProvider>().onItemTapped(1);
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductListScreen(category: category)));
                        }
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
