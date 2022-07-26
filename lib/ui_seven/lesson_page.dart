import 'package:flutter/material.dart';
import 'package:show_up_animation/show_up_animation.dart';

class PartyPage extends StatefulWidget {
  const PartyPage({Key? key}) : super(key: key);
  static const String id = 'party_page';
  @override
  State<PartyPage> createState() => _PartyPageState();
}

class _PartyPageState extends State<PartyPage> {
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/im_party.jpeg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.2),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ShowUpAnimation(
                animationDuration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                direction: Direction.vertical,
                offset: 1,
                child: const Text(
                  'Find the best parties near you.',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
              ShowUpAnimation(
                animationDuration: const Duration(milliseconds: 1200),
                curve: Curves.easeIn,
                direction: Direction.vertical,
                offset: 1,
                child: const Text(
                  'Let us find you a party for your interest',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w100),
                ),
              ),
              const SizedBox(height: 150),
              isLogin
                  ? ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 1400),
                      curve: Curves.easeIn,
                      direction: Direction.vertical,
                      offset: 1,
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.yellow[900],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  : ShowUpAnimation(
                      animationDuration: const Duration(milliseconds: 1500),
                      curve: Curves.easeIn,
                      direction: Direction.vertical,
                      offset: 1,
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: Text(
                            'Google+',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
