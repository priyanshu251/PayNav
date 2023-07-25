import 'package:flutter/material.dart';
import 'package:pay_nav_project/widgets/prize_tile.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TabBar(
                  controller: tabController,
                  indicatorColor: const Color(0xFF3473E4),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 8,
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
                flex: 3,
                child: SizedBox(
                  width: w * 0.5,
                ),
              )
            ],
          ),
          const Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
            color: Color(0xFF3473E4),
            height: 0,
          ),
          SizedBox(
            height: 500, //contraining height of tab bar view
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Text(
                            'Rank',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                          const Spacer(),
                          Text(
                            'Prizes',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 17),
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
                const Center(
                  child: Text('Points Here'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
