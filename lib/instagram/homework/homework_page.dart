import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'pages/feed_page.dart';

class InstagramHomeworkPage extends StatefulWidget {
  const InstagramHomeworkPage({Key? key}) : super(key: key);
  static const id = 'instagram_homework_page';

  @override
  State<InstagramHomeworkPage> createState() => _InstagramHomeworkPageState();
}

class _InstagramHomeworkPageState extends State<InstagramHomeworkPage> {
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
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Feather.camera),
          color: Colors.grey,
        ),
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Feather.tv),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesome.send_o),
            color: Colors.grey,
          ),
        ],
      ),
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentPage,
        onTap: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey[700],
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
