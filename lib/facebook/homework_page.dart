import 'package:flutter/material.dart';

class FacebookHomeworkPage extends StatefulWidget {
  const FacebookHomeworkPage({Key? key}) : super(key: key);
  static const id = 'facebook_homework_page';

  @override
  State<FacebookHomeworkPage> createState() => _FacebookHomeworkPageState();
}

class _FacebookHomeworkPageState extends State<FacebookHomeworkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          'facebook',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // #post create
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            width: double.infinity,
            height: 120,
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/facebook_images/user_1.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          height: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border:
                                Border.all(width: 1, color: Colors.grey[700]!),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'What\'s on your mind?',
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Live',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[500],
                        margin: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Photo',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[500],
                        margin: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'Check in',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.grey[700]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #post stories
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.black,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_1.jpeg',
                  userImage: 'assets/images/facebook_images/user_1.jpeg',
                  userName: 'Monica',
                ),
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_2.jpeg',
                  userImage: 'assets/images/facebook_images/user_2.jpeg',
                  userName: 'Lisa',
                ),
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_3.jpeg',
                  userImage: 'assets/images/facebook_images/user_3.jpeg',
                  userName: 'Devid',
                ),
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_4.jpeg',
                  userImage: 'assets/images/facebook_images/user_4.jpeg',
                  userName: 'Aira',
                ),
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_5.jpeg',
                  userImage: 'assets/images/facebook_images/user_5.jpeg',
                  userName: 'Selena',
                ),
                makeStory(
                  storyImage: 'assets/images/facebook_images/story_1.jpeg',
                  userImage: 'assets/images/facebook_images/user_1.jpeg',
                  userName: 'Monica',
                ),
              ],
            ),
          ),

          // #post feeds
          makeFeed(
            userName: 'Devid',
            userImage: 'assets/images/facebook_images/user_3.jpeg',
            feedTime: '1h ago',
            feedText:
                'Loreim ipsum text from the internet, it is just text for creating an app UI',
            feedImageOne: 'assets/images/facebook_images/feed_5.jpeg',
            feedImageTwo: 'assets/images/facebook_images/feed_4.jpeg',
          ),
          makeFeed(
            userName: 'John',
            userImage: 'assets/images/facebook_images/user_2.jpeg',
            feedTime: '1h ago',
            feedText:
                'Loreim ipsum text from the internet, it is just text for creating an app UI',
            feedImageOne: 'assets/images/facebook_images/feed_3.jpeg',
            feedImageTwo: 'assets/images/facebook_images/feed_2.jpeg',
          ),
          makeFeed(
            userName: 'Lisa',
            userImage: 'assets/images/facebook_images/user_1.jpeg',
            feedTime: '1h ago',
            feedText:
                'Loreim ipsum text from the internet, it is just text for creating an app UI',
            feedImageOne: 'assets/images/facebook_images/feed_1.jpeg',
            feedImageTwo: 'assets/images/facebook_images/feed_2.jpeg',
          ),
          makeFeed(
            userName: 'Devid',
            userImage: 'assets/images/facebook_images/user_4.jpeg',
            feedTime: '1h ago',
            feedText:
                'Loreim ipsum text from the internet, it is just text for creating an app UI',
            feedImageOne: 'assets/images/facebook_images/feed_3.jpeg',
            feedImageTwo: 'assets/images/facebook_images/feed_2.jpeg',
          ),
          makeFeed(
            userName: 'Alisa',
            userImage: 'assets/images/facebook_images/user_5.jpeg',
            feedTime: '1h ago',
            feedText:
                'Loreim ipsum text from the internet, it is just text for creating an app UI',
            feedImageOne: 'assets/images/facebook_images/feed_4.jpeg',
            feedImageTwo: 'assets/images/facebook_images/feed_3.jpeg',
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 2, color: Colors.blueAccent),
                ),
              ),
              Text(
                userName,
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed(
      {userName, userImage, feedTime, feedText, feedImageOne, feedImageTwo}) {
    return Container(
      color: Colors.black,
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                // #header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            ),
                            Text(
                              feedTime,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz,
                            size: 35, color: Colors.grey[500]))
                  ],
                ),
                const SizedBox(height: 20),
                // #feedText
                Text(
                  feedText,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500],
                      height: 1.5,
                      letterSpacing: .7),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // #photo
          SizedBox(
            height: 240,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImageOne),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImageTwo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // #likes and comments
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5, 0),
                      child: makeLove(),
                    ),
                    Text(
                      '2.5 K',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Text(
                  '400 Comments',
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          // #like, comment and share buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              'Like',
              style: TextStyle(
                  color: isActive ? Colors.blue : Colors.grey, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Center(
        child: Row(
          children: const [
            Icon(
              Icons.chat,
              color: Colors.grey,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              'Comment',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Center(
        child: Row(
          children: const [
            Icon(
              Icons.share,
              color: Colors.grey,
              size: 20,
            ),
            SizedBox(width: 5),
            Text(
              'Share',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: const Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }
}
