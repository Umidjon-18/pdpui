import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('UI'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'User ',
              style: TextStyle(
                color: Colors.red,
                fontSize: 35,
              ),
            ),
            Text(
              'Interface',
              style: TextStyle(
                color: Colors.lime,
                fontSize: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
