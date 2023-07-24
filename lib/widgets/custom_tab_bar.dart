import 'package:flutter/material.dart';

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
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
            height: 300,
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
                child: Image.asset(
                  'assets/images/green triangle.png',
                  cacheHeight: 8,
                  cacheWidth: 10,
                ),
              ),
              Image.asset('assets/images/runner up.png'),
              Text(
                '7260',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Natasha Chowdary',
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
              Image.asset('assets/images/winner.png'),
              Text(
                '8370',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Raja Reddy',
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
                child: Image.asset(
                  'assets/images/red triangle.png',
                  cacheHeight: 8,
                  cacheWidth: 10,
                ),
              ),
              Image.asset('assets/images/second runner up.png'),
              Text(
                '6260',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: const Color(0xFF99B6FF),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Samvibhan Singh',
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
