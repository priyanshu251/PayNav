import 'package:flutter/material.dart';
import 'package:pay_nav_project/provider.dart';
import 'package:pay_nav_project/screens/loading_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UsersData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        home: const LoadingScreen(),
      ),
    );
  }
}
