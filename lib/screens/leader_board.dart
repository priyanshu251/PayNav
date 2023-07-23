import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/custom_tab_bar.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
            ),
            Image.asset(
              'assets/images/curtain.png',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Leader Board',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        'How it works',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      Image.asset(
                        'assets/images/settings.png',
                        cacheHeight: 35,
                        cacheWidth: 32,
                      ),
                    ],
                  ),
                  const CustomTabBar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
