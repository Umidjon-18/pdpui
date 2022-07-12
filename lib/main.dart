import 'package:flutter/material.dart';
import 'package:pdpui/pages/SignUp_page.dart';
import 'package:pdpui/pages/home_page.dart';
import 'package:pdpui/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(),
      routes: {
        HomePage.id:(context) => const HomePage(),
        LoginPage.id:(context) => const LoginPage(),
      },
    );
  }
}
