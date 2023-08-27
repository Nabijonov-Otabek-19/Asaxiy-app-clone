import 'package:asaxiy_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Container(
        color: background,
        child: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
