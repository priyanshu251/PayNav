import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/prize_tile.dart';
import 'package:pay_nav_project/screens/personalised_challenge_&_Awards.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with TickerProviderStateMixin {
  late TabController tabController;
  double tabBarViewHeight = 600;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(onTabChanged);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.removeListener(onTabChanged);
    tabController.dispose();
  }

  void onTabChanged() {
    setState(() {
      tabBarViewHeight = (tabController.index == 0) ? 600 : 2200;
    });
  }

  @override
  Widget build(BuildContext context) {
    tabBarViewHeight = (tabController.index == 0) ? 500 : 2200;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Wrap(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TabBar(
                  controller: tabController,
                  indicator: const UnderlineTabIndicator(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      width: 6,
                      color: Color(0xFF3473E4),
                    ),
                    insets: EdgeInsets.only(bottom: 1.5, left: 1.5),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  // indicatorColor: const Color(0xFF3473E4),

                  // indicatorWeight: 8,
                  labelColor: const Color(0xFF3473E4),
                  unselectedLabelColor: Colors.grey[900],
                  tabs: const [
                    Tab(
                      text: 'Prizes',
                    ),
                    Tab(
                      text: 'Points',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: SizedBox(
                  width: w * 0.5,
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1.5,
            indent: 24,
            endIndent: 20,
            color: Color(0xFF3473E4),
            height: 0,
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: child,
                ),
              );
            },
            child: SizedBox(
              key: ValueKey<int>(tabController.index),
              height: (tabController.index == 0) ? 500 : 2200,
              child: TabBarView(
                controller: tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  PrizesTabContent(),
                  PointsTabContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PointsTabContent extends StatelessWidget {
  const PointsTabContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Earn more points to level up',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                'Achievements',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15.5),
              ),
              const Spacer(),
              Text(
                'Points',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15.5),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Only Once',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF3473E4),
                  )),
        ),
        const AchievementTile(
          title: 'Joined Pav Nav',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'First Purchase',
          subtitle: '',
          trailing: '250',
        ),
        const AchievementTile(
          title: 'KYC',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'Account Opend & Added Money',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'First Gold Purchase',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'First Voucher Purchase',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'First Direct Shopping',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'Play "The Legend of Gold, Car & Jet"',
          subtitle: '',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'Add money in account through bank transfer',
          subtitle: '( Valid only once )',
          trailing: '50',
        ),
        const AchievementTile(
          title: 'First Neo Crad Transaction',
          subtitle: '( Coming Soon* )',
          trailing: '100',
        ),
        const AchievementTile(
          title: 'First Neo Crad Offline Transaction',
          subtitle: '( Coming Soon* )',
          trailing: '100',
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('My Network',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF3473E4),
                  )),
        ),
        const AchievementTile(
          title: 'Refer a Friend',
          subtitle: '(After first successful transaction)',
          trailing: '10',
        ),
        const AchievementTile(
          title: 'Refer a friend- on every 5th referal',
          subtitle: '(Like 10th referal, 15th, 2th and so on...)',
          trailing: '20',
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Once A Day',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF3473E4),
                  )),
        ),
        const AchievementTile(
          title: 'Highest Gold Purchase of the Day',
          subtitle: '(The amount should be highest of all buyers)',
          trailing: '100',
        ),
        const AchievementTile(
          title: 'Highest Voucher Purchase of the Day',
          subtitle: '(The amount should be highest of all buyers)',
          trailing: '150',
        ),
        const AchievementTile(
          title: 'Highest Money added in Account for the Day',
          subtitle: '(The amount should be highest of all the account holders)',
          trailing: '100',
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Unlimited',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF3473E4),
                  )),
        ),
        const AchievementTile(
          title: 'Every Time Gold Purchased',
          subtitle: '(1 points on \$20 spent, \$40 spent 2 points and so on)',
          trailing: '1',
        ),
        const AchievementTile(
          title: 'Every Time Voucher Purchased',
          subtitle:
              '(10 points on \$50 spent, \$100 spent 20 points and so on)',
          trailing: '10',
        ),
        const AchievementTile(
          title: 'Every Time Money added to Account',
          subtitle: '(1 points on \$50 spent, \$100 spent 2 points and so on)',
          trailing: '1',
        ),
        const AchievementTile(
          title: 'Every Time Direct Shopping',
          subtitle: '',
          trailing: '10',
        ),
        const AchievementTile(
          title: 'Every Online Transaction made with Neo Card',
          subtitle: '(Coming Soon*)',
          trailing: '20',
        ),
        const AchievementTile(
          title: 'Every Offline Transaction made with Neo Card',
          subtitle: '(Coming Soon*)',
          trailing: '30',
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Growth Challenges',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color(0xFF3473E4),
                  )),
        ),
        const AchievementTile(
          title: '7 Days Gold Challenge',
          subtitle: '(7 days continuous)',
          trailing: '50',
        ),
        const AchievementTile(
          title: '7 Days Voucher Challenge',
          subtitle: '(7 days continuous)',
          trailing: '150',
        ),
        const AchievementTile(
          title: '7 Days Neo Card Challenge',
          subtitle: '(Coming Soon, 7 days continuous)',
          trailing: '100',
        ),
        const AchievementTile(
          title: '30 Days Gold Challenge',
          subtitle: '(Min amount \$10, 30 days continuous)',
          trailing: '150',
        ),
        const AchievementTile(
          title: '30 Days Voucher Challenge',
          subtitle: '(30 days continuous)',
          trailing: '500',
        ),
        const AchievementTile(
          title: '30 Days Neo Card Challenge',
          subtitle: '(Coming Soon, 30 days continuous)',
          trailing: '200',
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const ChallengesAndAwards())));
            },
            child: Text(
                'There are also points on personalised Challenges & Awards >',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color(0xFF3473E4),
                    )),
          ),
        ),
      ],
    );
  }
}

class AchievementTile extends StatelessWidget {
  const AchievementTile({
    Key? key,
    required this.title,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          ListTile(
            dense: true,
            title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
            subtitle:
                Text(subtitle!, style: Theme.of(context).textTheme.bodySmall),
            trailing: Text(trailing!,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
          const Divider(
            height: 0,
            thickness: 1,
            indent: 14.5,
            endIndent: 14.5,
          ),
        ],
      ),
    );
  }
}

class PrizesTabContent extends StatelessWidget {
  const PrizesTabContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          Text(
            'Be the first in your gang to grow up in ranks',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Text(
                'Rank',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15.5),
              ),
              const Spacer(),
              Text(
                'Prizes',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 15.5),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
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
            prizeValue: '1,000',
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
        ],
      ),
    );
  }
}
