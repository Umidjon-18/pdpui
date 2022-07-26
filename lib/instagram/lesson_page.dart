import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'pages/feed_page.dart';

class InstagramLessonPage extends StatefulWidget {
  const InstagramLessonPage({Key? key}) : super(key: key);
  static const id = 'instagram_lesson_page';

  @override
  State<InstagramLessonPage> createState() => _InstagramLessonPageState();
}

class _InstagramLessonPageState extends State<InstagramLessonPage> {
  int currentPage = 0;
  var pages = [
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
    const FeedPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Feather.camera),
          color: Colors.black,
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Feather.tv),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.send_o),
            color: Colors.black,
          ),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(FontAwesome.home), label: 'Feed'),
          BottomNavigationBarItem(icon: Icon(Feather.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Feather.heart), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Feather.user), label: 'Account'),
        ],
      ),
    );
  }
}
