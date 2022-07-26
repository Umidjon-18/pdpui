import 'package:flutter/material.dart';

class HotelHomework extends StatefulWidget {
  const HotelHomework({Key? key}) : super(key: key);
  static const id = 'hotel_homework';
  @override
  State<HotelHomework> createState() => _HotelHomeworkState();
}

class _HotelHomeworkState extends State<HotelHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.4),
                  ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: 'Search for hotels...',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            // #body
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Hotels',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          image: 'assets/images/ic_hotel1.jpeg',
                          title: 'Hotel 1',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel2.jpeg',
                          title: 'Hotel 2',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel3.jpeg',
                          title: 'Hotel 3',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel4.jpeg',
                          title: 'Hotel 4',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel5.jpeg',
                          title: 'Hotel 5',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Airport Hotels',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          image: 'assets/images/ic_hotel4.jpeg',
                          title: 'Hotel 1',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel3.jpeg',
                          title: 'Hotel 2',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel2.jpeg',
                          title: 'Hotel 3',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel1.jpeg',
                          title: 'Hotel 4',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel5.jpeg',
                          title: 'Hotel 5',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Resort Hotels',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(
                          image: 'assets/images/ic_hotel5.jpeg',
                          title: 'Hotel 1',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel2.jpeg',
                          title: 'Hotel 2',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel3.jpeg',
                          title: 'Hotel 3',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel4.jpeg',
                          title: 'Hotel 4',
                        ),
                        makeItem(
                          image: 'assets/images/ic_hotel1.jpeg',
                          title: 'Hotel 5',
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

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1.1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
