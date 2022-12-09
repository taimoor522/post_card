import 'package:flutter/material.dart';
import 'package:social_media/card.dart';
import 'package:social_media/constants.dart';

import 'appbar.dart';
import 'bottom_appbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData.dark(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: black,
      appBar: const Appbar(),
      bottomNavigationBar: const BottomAppbar(),
      body: ListView(
        children: const [
          PostCard(
            name: 'Mark Kyle',
            profile: 'assets/profile.jpg',
            post: 'assets/post2.jpg',
            time: '23 mins ago',
          ),
          PostCard(
            name: 'Amanda',
            profile: 'assets/profile3.jpg',
            post: 'assets/post2.jpg',
            time: '1 hour ago',
          ),
          PostCard(
            name: 'Obi Wan',
            profile: 'assets/profile2.jpg',
            post: 'assets/post.jpg',
            time: '4 hours ago',
          ),
          PostCard(
            name: 'Julia',
            profile: 'assets/profile4.jpg',
            post: 'assets/post.jpg',
            time: '14 hours ago',
          ),
          PostCard(
            name: 'Ibrahim',
            profile: 'assets/profile5.jpg',
            post: 'assets/post.jpg',
            time: '2 hours ago',
          ),
          PostCard(
            name: 'Amanda',
            profile: 'assets/profile3.jpg',
            post: 'assets/post.jpg',
            time: '1 hour ago',
          ),
          PostCard(
            name: 'Julia',
            profile: 'assets/profile4.jpg',
            post: 'assets/post.jpg',
            time: '14 hours ago',
          ),
          PostCard(
            name: 'Mark Kyle',
            profile: 'assets/profile.jpg',
            post: 'assets/post2.jpg',
            time: '23 mins ago',
          ),
          PostCard(
            name: 'Amanda',
            profile: 'assets/profile3.jpg',
            post: 'assets/post2.jpg',
            time: '1 hour ago',
          ),
        ],
      ),
    );
  }
}
