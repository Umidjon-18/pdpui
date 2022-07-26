import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pdpui/pages/home_page.dart';
import 'package:pdpui/utils/Strings.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);
  static const String id = 'intro_page';

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  late PageController _pageController;
  int initialPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                initialPage = page;
              });
            },
            children: [
              makePage(
                image: 'assets/images/intro_1.png',
                title: Strings.pageOneTitle,
                context: Strings.pageOneContext,
              ),
              makePage(
                image: 'assets/images/intro_1.png',
                title: Strings.pageTwoTitle,
                context: Strings.pageTwoContext,
              ),
              makePage(
                image: 'assets/images/intro_1.png',
                title: Strings.pageThreeTitle,
                context: Strings.pageThreeContext,
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
        ],
      ),
    );
  }

  Widget makePage({image, title, context}) {
    return Container(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(image),
              ),
              const SizedBox(height: 30),
              Text(
                title,
                style: const TextStyle(fontSize: 30, color: Colors.green),
              ),
              const SizedBox(height: 30),
              Text(
                context,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget indicator(bool isActive) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 300),
      height: 5,
      width: isActive ? 30 : 6,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
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
