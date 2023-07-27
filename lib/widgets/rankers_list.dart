import 'package:flutter/material.dart';

class RankersList extends StatelessWidget {
  const RankersList({
    super.key,
    required this.rankers,
  });

  final dynamic rankers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
          padding:
              const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 15),
          height: 83,
          //width: w * 0.904,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF4ECFF),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: FittedBox(
                      child: Text(
                        (index + 4).toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  rankers[index + 3]['triangle']
                      ? Image.asset('assets/images/green triangle.png',
                          cacheHeight: 8, cacheWidth: 10)
                      : Image.asset('assets/images/red triangle.png',
                          cacheHeight: 8, cacheWidth: 10),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              RankerProfile(
                rankers: rankers,
                index: index,
              ),
              const SizedBox(
                width: 2,
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
    );
  }
}

class RankerProfile extends StatelessWidget {
  const RankerProfile({super.key, required this.rankers, required this.index});

  final dynamic rankers;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              image: AssetImage(rankers[index + 3]['profile_url']),
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
    );
  }
}
