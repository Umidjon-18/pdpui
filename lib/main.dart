// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:pdpui/test.dart';
import 'package:pdpui/ui_four/intro_page.dart';

import 'amazon/homework_page.dart';
import 'amazon/lesson_page.dart';
import 'facebook/homework_page.dart';
import 'facebook/lesson_page.dart';
import 'instagram/homework/homework_page.dart';
import 'instagram/lesson_page.dart';
import 'ui_five/homework_page.dart';
import 'ui_five/lesson_page.dart';
import 'ui_four/home_page.dart';
import 'ui_four/homework_page.dart';
import 'ui_seven/homework_page.dart';
import 'ui_seven/lesson_page.dart';
import 'ui_six/homework_page.dart';
import 'ui_six/lesson_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: const InstagramHomeworkPage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        IntroPage.id: (context) => const IntroPage(),
        HomeworkFour.id: (context) => const HomeworkFour(),
        ShoppingPage.id: (context) => const ShoppingPage(),
        ShoppingHomework.id: (context) => const ShoppingHomework(),
        HotelPage.id: (context) => const HotelPage(),
        HotelHomework.id: (context) => const HotelHomework(),
        PartyPage.id: (context) => const PartyPage(),
        PartyHomework.id: (context) => const PartyHomework(),
        AmazonLessonPage.id: (context) => const AmazonLessonPage(),
        AmazonHomeworkPage.id: (context) => const AmazonHomeworkPage(),
        FacebookLessonPage.id: (context) => const FacebookLessonPage(),
        FacebookHomeworkPage.id: (context) => const FacebookHomeworkPage(),
        InstagramLessonPage.id: (context) => const InstagramLessonPage(),
        InstagramHomeworkPage.id: (context) => const InstagramHomeworkPage(),
      },
    );
  }
}
