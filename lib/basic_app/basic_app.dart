import 'package:flutter/material.dart';
import 'package:projectinstagram/basic_app/ProfileScreen_3.dart';
import 'package:projectinstagram/basic_app/instagram.dart';
import 'package:projectinstagram/basic_app/ProfileScreen_4.dart';
import 'package:projectinstagram/basic_app/ProfileScreen_5.dart';

import 'Search.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Instagram(),//
      //home: ChatScreen(),
      //home: NotificationsScreen(),
      // home: VideoScreen(),
      //home: ProfileMe(),
      //home: Profilescreen_2(),
      //home: Profilescreen_3(),
      //home: Profilescreen_4(),
      //home: Profilescreen_5(),
      //home: Search(),
      //home: reel(),
      //home: NewPostScreen(),

    );
  }
}


