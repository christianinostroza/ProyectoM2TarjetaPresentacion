import 'package:flutter/material.dart';
import 'dart:async';

import 'circle_avatar.dart';
import 'image_rq.dart';
import 'profile_card.dart';
import 'skills_card.dart';
import 'network_card.dart';

class PresentationCard extends StatefulWidget {
  const PresentationCard({super.key});

  @override

  PresentationCardState createState() => PresentationCardState();
}

class PresentationCardState extends State<PresentationCard> {
  int _currentIndex = 0;
  final List<String> _backgroundImages = [
    "assets/imagenes/background.png",
    "assets/imagenes/background4.png"
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _backgroundImages.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(_backgroundImages[_currentIndex]),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: const [
                SizedBox(height: 10),
                CircleAvatarWidget(), 
                SizedBox(height: 10),
                ImageRQWidget(),  
                SizedBox(height: 10),
                ProfileCard(),  
                SkillsCard(),   
                NetworkCard(), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
