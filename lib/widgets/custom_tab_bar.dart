import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pay_nav_project/provider.dart';

class TabBarAndTabBarView extends StatefulWidget {
  const TabBarAndTabBarView({super.key});

  @override
  State<TabBarAndTabBarView> createState() => _TabBarAndTabBarViewState();
}

class _TabBarAndTabBarViewState extends State<TabBarAndTabBarView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF1E0082),
          ),
          child: TabBar(
            controller: tabController,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white70,
            tabs: const [
              Tab(
                text: 'This Week',
              ),
              Tab(
                text: 'This Month',
              ),
              Tab(
                text: 'Last Month',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: SizedBox(
            height: 290, //contraining height of tab bar view
            child: TabBarView(
              controller: tabController,
              children: const [
                WinnersTab(),
                WinnersTab(),
                WinnersTab(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WinnersTab extends StatelessWidget {
  const WinnersTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dynamic rankers = Provider.of<UsersData>(context).data;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: rankers[1]['triangle']
                    ? Image.asset('assets/images/green triangle.png',
                        cacheHeight: 8, cacheWidth: 10)
                    : Image.asset('assets/images/red triangle.png',
                        cacheHeight: 8, cacheWidth: 10),
              ),
              Image.asset(rankers[1]['profile_url']),
              Text(
                rankers[1]['points'],
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                rankers[1]['name'],
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(rankers[0]['profile_url']),
              Text(
                rankers[0]['points'],
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    rankers[0]['name'],
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white),
                  ),
                  rankers[0]['verified']
                      ? Image.asset(
                          'assets/images/blue tick.png',
                          height: 25,
                          width: 25,
                        )
                      : Container(
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF2A12CC),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              Text(
                '3',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: rankers[2]['triangle']
                    ? Image.asset('assets/images/green triangle.png',
                        cacheHeight: 8, cacheWidth: 10)
                    : Image.asset('assets/images/red triangle.png',
                        cacheHeight: 8, cacheWidth: 10),
              ),
              Image.asset(rankers[2]['profile_url']),
              Text(
                rankers[2]['points'],
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                rankers[1]['name'],
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
