import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/stack_header.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
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
              // Text('data'),
              ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    height: 83,
                    width: w * 0.904,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4ECFF),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              (index + 4).toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(fontWeight: FontWeight.w400),
                            ),
                            rankers[index + 3]['triangle']
                                ? Image.asset(
                                    'assets/images/green triangle.png',
                                    cacheHeight: 8,
                                    cacheWidth: 10)
                                : Image.asset('assets/images/red triangle.png',
                                    cacheHeight: 8, cacheWidth: 10),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Stack(
                          children: [
                            const SizedBox(
                              height: 70,
                              width: 75,
                            ),
                            Container(
                              height: 57,
                              width: 57,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      rankers[index + 3]['profile_url']),
                                ),
                              ),
                              clipBehavior: Clip.antiAlias,
                            ),
                            rankers[index + 3]['verified']
                                ? Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      'assets/images/blue tick.png',
                                      height: 25,
                                      width: 25,
                                    ),
                                  )
                                : Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFF4ECFF),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(rankers[index + 3]['name']),
                        const Spacer(),
                        Text(
                          rankers[index + 3]['points'],
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
