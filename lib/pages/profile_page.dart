import 'package:flutter/material.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // tabs
  final List<Widget> tabs = const [
    // feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),

    // reels tab
    Tab(
      icon: Icon(
        Icons.video_collection,
        color: Colors.grey,
      ),
    ),

    // tagged tab
    Tab(
      icon: Icon(
        Icons.bookmark,
        color: Colors.grey,
      ),
    ),
  ];

  // tab bar view(like pages)
  final List<Widget> TabBarViews = const [
    // feed view
    FeedView(),

    // reels view
    ReelsView(),

    // tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(),
        body: ListView(
          children: [
            const SizedBox(height: 10),
            // profile details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // following
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .end, // puts following closer to center(left)
                  children: const [
                    Text(
                      '509',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                //profile pic
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                  ),
                ),

                // followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // puts closer to center(right)
                  children: const [
                    Text(
                      '287.2k',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            // name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'BorkBork',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' | '),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 5),

            // bio
            Text(
              'UI Designer • Programmer • Project Manager',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 5),

            // link
            Text(
              'berkeley.ucgod.repl.co',
              style: TextStyle(
                color: Colors.blue[500],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  // edit profile
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text('Edit Profile'),
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  // contact
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'Contact',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // tab bar
            TabBar(
              tabs: tabs,
            ),

            // tab bar view
            SizedBox(
              height: 1000,
              child: TabBarView(children: TabBarViews),
            ),
          ],
        ),
      ),
    );
  }
}
