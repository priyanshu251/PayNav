import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/stack_header.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPrint(w.toString());
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            children: [
              StackHeader(),
              // Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
