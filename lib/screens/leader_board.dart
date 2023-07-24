import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/stack_header.dart';
import 'package:pay_nav_project/widgets/prize_tile.dart';
import 'package:pay_nav_project/widgets/rankers_list.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
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
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      'Rank',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    const Spacer(),
                    Text(
                      'Prizes',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                  ],
                ),
              ),
              const PrizeTile(
                rankImage: 'assets/images/crown1.png',
                rank: '1',
                prizeImage: 'assets/images/gold.png',
                prizeName: 'Gold',
                prizeValue: '1,00,000',
              ),
              const PrizeTile(
                rankImage: 'assets/images/rank 2.png',
                rank: '2',
                prizeImage: 'assets/images/gold.png',
                prizeName: 'Gold',
                prizeValue: '50,000',
              ),
              const PrizeTile(
                rankImage: 'assets/images/rank 3.png',
                rank: '3',
                prizeImage: 'assets/images/amazon.png',
                prizeName: 'Voucher',
                prizeValue: '10,000',
              ),
              const PrizeTile(
                rankImage: 'assets/images/green badge.png',
                rank: '4 - 10',
                prizeImage: 'assets/images/swiggy.png',
                prizeName: 'Voucher',
                prizeValue: '1,00,000',
              ),
              const PrizeTile(
                rankImage: 'assets/images/blue star.png',
                rank: '11 - 100',
                prizeImage: 'assets/images/gold.png',
                prizeName: 'Gold',
                prizeValue: '10 mg',
              ),
              const PrizeTile(
                rankImage: 'assets/images/yellow badge.png',
                rank: '100 - 500',
                prizeImage: 'assets/images/gold.png',
                prizeName: 'Gold',
                prizeValue: '1 mg',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
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
