import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShoppingHomework extends StatefulWidget {
  const ShoppingHomework({Key? key}) : super(key: key);
  static const String id = 'shopping_homework';

  @override
  State<ShoppingHomework> createState() => _ShoppingHomeworkState();
}

class _ShoppingHomeworkState extends State<ShoppingHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: const Text(
          'Cars',
          style: TextStyle(color: Colors.red, fontSize: 24),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: Colors.red,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.red,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryItem(true, 'All'),
                    categoryItem(false, 'Red'),
                    categoryItem(false, 'Green'),
                    categoryItem(false, 'Blue'),
                    categoryItem(false, 'Yellow'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              baseItem('assets/images/im_car1.jpeg'),
              baseItem('assets/images/im_car2.jpeg'),
              baseItem('assets/images/im_car3.jpeg'),
              baseItem('assets/images/im_car4.png'),
              baseItem('assets/images/im_car5.jpeg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryItem(bool isSelected, String text) {
    return AspectRatio(
      aspectRatio: (2.2 / 1),
      child: Container(
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red[500] : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: isSelected ? 20 : 17),
          ),
        ),
      ),
    );
  }

  Widget baseItem(String image) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 10,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text(
                      'Simpl Car',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Electric',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  '100\$',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
