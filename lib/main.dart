import 'package:flutter/material.dart';
import 'package:maharah_project/UI/home_screen.dart';
import 'package:maharah_project/user_profile/user_profile_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) {
          return const HomeScreen();
        },
        "/Account": (coext) {
          return const UserProfileScreen();
        }
      },
    ),
  );
}
