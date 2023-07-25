import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/bottom_tab.dart';
import 'package:pay_nav_project/widgets/stack_header.dart';
import 'package:pay_nav_project/widgets/rankers_list.dart';
import 'package:provider/provider.dart';
import 'package:pay_nav_project/provider.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic rankers = Provider.of<UsersData>(context).data;
    // double w = MediaQuery.of(context).size.width;
    // debugPrint(w.toString());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const StackHeader(),
              RankersList(rankers: rankers),
              const SizedBox(
                height: 6,
              ),
              const BottomTabBar(),
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Made with Golden ',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey[800], fontSize: 17),
                    ),
                    Image.asset(
                      'assets/images/heart.png',
                      height: 23,
                      width: 25,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
