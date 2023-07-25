import 'package:flutter/material.dart';
import 'package:pay_nav_project/provider.dart';
import 'package:pay_nav_project/screens/leader_board.dart';
import 'package:provider/provider.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        dynamic rankers = [
          {
            "name": "Raja Reddy",
            "gender": true,
            "profile_url": "assets/images/boy_avatar2.png",
            "points": "8370",
            "triangle": true,
            "verified": true
          },
          {
            "name": "Natasha Chowdary",
            "gender": false,
            "profile_url": "assets/images/girls_avatar2.png",
            "points": "7260",
            "triangle": true,
            "verified": false
          },
          {
            "name": "Sambhivan Singh",
            "gender": false,
            "profile_url": "assets/images/girls_avatar1.png",
            "points": "6260",
            "triangle": false,
            "verified": false
          },
          {
            "name": "Shakilesh Yadav",
            "gender": true,
            "profile_url": "assets/images/man_profile.png",
            "points": "5960",
            "triangle": false,
            "verified": true
          },
          {
            "name": "Kaveri Sharma",
            "gender": false,
            "profile_url": "assets/images/girls_avatar1.png",
            "points": "5420",
            "triangle": true,
            "verified": false
          },
          {
            "name": "Brij Mahapatra",
            "gender": true,
            "profile_url": "assets/images/boy_avatar1.png",
            "points": "5260",
            "triangle": true,
            "verified": false
          },
          {
            "name": "Shikha Rawat",
            "gender": false,
            "profile_url": "assets/images/girl_profile.png",
            "points": "5190",
            "triangle": false,
            "verified": true
          },
          {
            "name": "Natasha Oberoi",
            "gender": false,
            "profile_url": "assets/images/girls_avatar2.png",
            "points": "5010",
            "triangle": true,
            "verified": true
          },
          {
            "name": "Danish Sait",
            "gender": true,
            "profile_url": "assets/images/boy_avatar1.png",
            "points": "4960",
            "triangle": true,
            "verified": false
          },
          {
            "name": "Suraj Agarwal",
            "gender": true,
            "profile_url": "assets/images/boy_avatar2.png",
            "points": "4720",
            "triangle": false,
            "verified": false
          },
        ];
        Provider.of<UsersData>(context, listen: false).data = rankers;
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => LeaderBoard())));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1E0082),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
