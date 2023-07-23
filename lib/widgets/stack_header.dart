import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/custom_tab_bar.dart';

class StackHeader extends StatelessWidget {
  const StackHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        SizedBox(
          height: w * 1.278,
        ),
        Image.asset(
          'assets/images/curtain.png',
          filterQuality: FilterQuality.high,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Leader Board',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    'How it works',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                  Image.asset(
                    'assets/images/settings.png',
                    cacheHeight: 35,
                    cacheWidth: 32,
                  ),
                ],
              ),
              const TabBarAndTabBarView(),
            ],
          ),
        ),
        Positioned(
          top: w * 0.995,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 83,
            width: w * 0.904,
            decoration: BoxDecoration(
              color: const Color(0xFFF4ECFF),
              borderRadius: BorderRadius.circular(23),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  offset: Offset(0, 3),
                  color: Color.fromARGB(255, 209, 209, 209),
                ),
              ],
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '41',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w400),
                    ),
                    Image.asset(
                      'assets/images/red triangle.png',
                      cacheHeight: 8,
                      cacheWidth: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Image.asset('assets/images/boywithbluetick.png'),
                const SizedBox(
                  width: 10,
                ),
                const Text('Lalit Thakre'),
                const Spacer(),
                Text(
                  '2130',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: w * 1.1399,
          left: w * 0.258,
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 50,
            width: w * 0.48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  color: Color.fromARGB(255, 202, 202, 202),
                ),
              ],
            ),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF1E0082),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'My Status & Awards  >',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
