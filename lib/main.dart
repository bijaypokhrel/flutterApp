import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routers.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        MyRoute.homeRoute: (context) => const HomePage(),
        MyRoute.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
