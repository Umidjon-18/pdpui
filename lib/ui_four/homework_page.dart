import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdpui/ui_four/home_page.dart';

import '../utils/Strings.dart';

class HomeworkFour extends StatefulWidget {
  const HomeworkFour({Key? key}) : super(key: key);
  static const String id = 'homewok_four_page';

  @override
  State<HomeworkFour> createState() => _HomeworkFourState();
}

class _HomeworkFourState extends State<HomeworkFour> {
  late PageController pageController;
  int initialPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (int pageIndex) {
              initialPage = pageIndex;
              setState(() {});
            },
            children: [
              _pageViewItem(
                title: Strings.pageOneTitle,
                context: Strings.pageOneContext,
                image: 'assets/images/intro_1.png',
              ),
              _pageViewItem(
                title: Strings.pageTwoTitle,
                context: Strings.pageTwoContext,
                image: 'assets/images/intro_1.png',
              ),
              _pageViewItem(
                title: Strings.pageThreeTitle,
                context: Strings.pageThreeContext,
                image: 'assets/images/intro_1.png',
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildIndicator(),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: initialPage != 0
                ? Container(
                    margin: const EdgeInsets.only(bottom: 60, left: 30),
                    child: GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        'Previous',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  )
                : null,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: initialPage == 2
                ? Container(
                    margin: const EdgeInsets.only(bottom: 60, right: 30),
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, HomePage.id),
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(bottom: 60, right: 30),
                    child: GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _pageViewItem({title, context, image}) {
    return Container(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Text(
            context,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Image(image: AssetImage(image))
        ],
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: isActive ? 30 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (var i = 0; i < 3; i++) {
      if (initialPage == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    return indicators;
  }
}
