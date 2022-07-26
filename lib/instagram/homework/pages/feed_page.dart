import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../model/post_model.dart';
import '../model/story_model.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List<Story> stories = [
    Story("assets/images/instagram_images/user_1.jpeg", "Jazmin"),
    Story("assets/images/instagram_images/user_2.jpeg", "Sylvester"),
    Story("assets/images/instagram_images/user_3.jpeg", "Lavina"),
    Story("assets/images/instagram_images/user_1.jpeg", "Jazmin"),
    Story("assets/images/instagram_images/user_2.jpeg", "Sylvester"),
    Story("assets/images/instagram_images/user_3.jpeg", "Lavina"),
  ];

  List<Post> posts = [
    Post(
        username: "Brianne",
        userImage: "assets/images/instagram_images/user_1.jpeg",
        postImage: "assets/images/instagram_images/feed_1.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Henri",
        userImage: "assets/images/instagram_images/user_2.jpeg",
        postImage: "assets/images/instagram_images/feed_2.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Mariano",
        userImage: "assets/images/instagram_images/user_3.jpeg",
        postImage: "assets/images/instagram_images/feed_3.jpeg",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(),
              // #stories and watch all
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Stories',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      'Watch all',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // #storylist
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: stories.map<Widget>((story) {
                    return itemOfStory(story);
                  }).toList(),
                ),
              ),

              // #posts
              Container(
                color: Colors.black,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: posts.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return itemOfPost(posts[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemOfStory(Story story) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            border: Border.all(color: const Color(0xFF8e44ad), width: 3),
          ),
          child: Container(
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image(
                image: AssetImage(story.image),
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          story.name,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }

  Widget itemOfPost(Post post) {
    return Column(
      children: [
        // #header
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(post.userImage!),
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post.username!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  SimpleLineIcons.options,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        // #image
        FadeInImage(
            placeholder: const AssetImage(
                'assets/images/instagram_images/placeholder.png'),
            image: AssetImage(post.postImage!)),
        // #bottom icon buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesome.heart_o),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesome.comment_o),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesome.send_o),
                  color: Colors.grey,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesome.bookmark_o),
              color: Colors.grey,
            ),
          ],
        ),

        // #tags
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Liked By ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text: 'Sigmund, Yesseniya, Dayana ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'and',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextSpan(
                  text: ' 1263 others',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

        // #caption
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: RichText(
            softWrap: true,
            overflow: TextOverflow.visible,
            text: TextSpan(
              children: [
                TextSpan(
                  text: post.username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' ${post.caption}',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),

        // #postdate
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.topLeft,
          child: const Text(
            '1 day ago',
            style: TextStyle(
              color: Colors.grey,
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
