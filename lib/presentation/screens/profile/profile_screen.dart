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
    _bloc.close();
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
                    Card(
                      elevation: 2,
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        top: 16,
                        bottom: 4,
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/ic_profile.png"),
                            ),
                            const SizedBox(width: 8),
                            const Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Phone number",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                // navigate to profile
                              },
                              icon: const Icon(
                                Icons.keyboard_arrow_right,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(14),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Balans:",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "0 so'm",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Spacer(flex: 1),
                                Column(
                                  children: [
                                    Text(
                                      "Ball:",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      "0 so'm",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Spacer(flex: 1),
                              ],
                            ),
                            const SizedBox(height: 8),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: background,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Hisob raqam: A123456",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.copy_rounded))
                                ],
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                fixedSize: const MaterialStatePropertyAll(
                                    Size(500, 40)),
                                side: const MaterialStatePropertyAll(
                                  BorderSide(width: 1, color: Colors.blue),
                                ),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Colors.white),
                                surfaceTintColor:
                                    const MaterialStatePropertyAll(
                                        Colors.white),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // hisobni to'ldirish
                                toast("Hisobni to'ldirish");
                              },
                              child: const Text(
                                "Hisobni to'ldirish",
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.check_circle_outline,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Profilni tasdiqlash",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Profilni tasdiqlash");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "El yurt ishonchi",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        toast("El yurt ishonchi");
                                      },
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("El yurti ishonchi");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.credit_card,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Mening kartalarim",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () =>
                                          toast("Mening kartalarim"),
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Mening kartalarim");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.favorite_border,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Sevimlilar",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () => toast("Sevimlilar"),
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Sevimlilar");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.newspaper_outlined,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Blog",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Profilni tasdiqlash");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Ko'p so'raladigan savollar",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("El yurti ishonchi");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.share_outlined,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Do'stlarni taklif qilish",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Mening kartalarim");
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.headphones,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Biz bilan bog'lanish",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Profilni tasdiqlash");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.map,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Olib ketish punktlari",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("El yurti ishonchi");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.language,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Ilova tili",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Mening kartalarim");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.nightlight_outlined,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Ilova mavzusi",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Mening kartalarim");
                              },
                            ),
                            const Divider(
                              color: Colors.black,
                              height: 1,
                              thickness: 0.2,
                            ),
                            GestureDetector(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.info_outline,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 4),
                                    const Expanded(
                                      child: Text(
                                        "Biz haqimizda",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right),
                                      onPressed: () {},
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                toast("Mening kartalarim");
                              },
                            ),
                          ],
                        ),
                      ),
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
