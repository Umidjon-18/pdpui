import 'package:flutter/material.dart';

class AmazonLessonPage extends StatefulWidget {
  const AmazonLessonPage({Key? key}) : super(key: key);
  static const id = 'amazon_lesson_page';

  @override
  State<AmazonLessonPage> createState() => _AmazonLessonPageState();
}

class _AmazonLessonPageState extends State<AmazonLessonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: const Image(
                  image: AssetImage(
                      'assets/images/amazon_images/amazon_logo.png')),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            // #search bar
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              color: const Color(0xff018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: const Icon(
                              Icons.search,
                              color: Color(0xff018197),
                            ),
                            hintText: 'What are you looking for?',
                            hintStyle: TextStyle(color: Colors.grey[900])),
                      ),
                    ),
                    const Icon(
                      Icons.camera_alt,
                      color: Color(0xff018197),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: ListView(
                children: [
                  // #location tab
                  Container(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.grey[600],
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          'Deliver to Uzbekistan, Republic of',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  // #Ads tab
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          child: const Center(
                            child: Text(
                              'We ship 45 millions products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 140,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70),
                                bottomLeft: Radius.circular(70),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/amazon_images/image_1.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #sign in
                  Container(
                    width: double.infinity,
                    height: 160,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Sign in for the best experience',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: const Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Create an account',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Deal of the day',
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(height: 16),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage(
                              'assets/images/amazon_images/item_7.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Up to 31% off APC UPS Battery Back',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '\$10.99 - \$79.9',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // #best
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Best sellers in Electronics',
                          style: TextStyle(fontSize: 22),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/amazon_images/item_2.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/amazon_images/item_3.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/amazon_images/item_4.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Expanded(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/amazon_images/item_5.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
