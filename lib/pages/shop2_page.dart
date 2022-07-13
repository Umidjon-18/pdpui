import 'package:flutter/material.dart';

class ShoppingPageTwo extends StatefulWidget {
  const ShoppingPageTwo({Key? key}) : super(key: key);

  @override
  State<ShoppingPageTwo> createState() => _ShoppingPageTwoState();
}

class _ShoppingPageTwoState extends State<ShoppingPageTwo> {
  final List<String> _listItems = [
    'assets/images/image_1.jpeg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.png',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_1.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 115, 0),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 115, 0),
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Apple Products',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[400]),
              child: const Center(child: Text('7')),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('assets/images/image_4.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.01),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Lifestyle sale',
                      style: TextStyle(color: Colors.white, fontSize: 33),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: const Center(child: Text('Shop Now')),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _listItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage(_listItems[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 40,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
