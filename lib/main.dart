import 'package:flutter/material.dart';
import 'package:pay_nav_project/screens/leader_board.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light()
          .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
      home: const LeaderBoard(),
    );
  }
}
