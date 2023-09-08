import 'package:asaxiy_clone/presentation/widgets/profile/widget_balans.dart';
import 'package:asaxiy_clone/presentation/widgets/profile/widget_first_column.dart';
import 'package:asaxiy_clone/presentation/widgets/profile/widget_profile.dart';
import 'package:asaxiy_clone/presentation/widgets/profile/widget_second_column.dart';
import 'package:asaxiy_clone/presentation/widgets/profile/widget_third_column.dart';
import 'package:asaxiy_clone/theme/colors.dart';
import 'package:asaxiy_clone/utils/output_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _bloc = ProfileBloc();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Profile"),
            ),
            body: Container(
              color: background,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    widgetProfile(() => {
                          // navigate to change profile screen
                          toast("Coming soon")
                        }),
                    widgetBalans(
                      onCopyTap: () => toast("Coming soon"),
                      onBalanceTap: () => toast("Coming soon"),
                    ),
                    widgetFirstColumn(
                      darajalarTap: () => toast("Coming soon"),
                      muddatliTap: () => toast("Coming soon"),
                      tasdiqlashTap: () => toast("Coming soon"),
                      elYurtIshonchiTap: () => toast("Coming soon"),
                      kartalarimTap: () => toast("Coming soon"),
                      sevimlilarTap: () => toast("Coming soon"),
                    ),
                    widgetSecondColumn(
                      blogTap: () => toast("Coming soon"),
                      savollarTap: () => toast("Coming soon"),
                      taklifTap: () => toast("Coming soon"),
                    ),
                    widgetThirdColumn(
                      boglanishTap: () => toast("Coming soon"),
                      punktlarTap: () => toast("Coming soon"),
                      tilTap: () => toast("Coming soon"),
                      themeTap: () => toast("Coming soon"),
                      haqimizdaTap: () => toast("Coming soon"),
                    ),
                    GestureDetector(
                      onTap: () => toast("Ilovadan chiqish"),
                      child: Card(
                        elevation: 2,
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.red,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Ilovadan chiqish",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
