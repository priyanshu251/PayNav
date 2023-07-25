import 'package:flutter/material.dart';

class PrizeTile extends StatelessWidget {
  const PrizeTile(
      {super.key,
      required this.rankImage,
      required this.rank,
      required this.prizeImage,
      required this.prizeName,
      required this.prizeValue});

  final String rankImage;
  final String rank;
  final String prizeImage;
  final String prizeName;
  final String prizeValue;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              rankImage,
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              rank,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 19),
            ),
            const Spacer(),
            SizedBox(
              width: w * 0.435,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    prizeImage,
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    prizeName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey),
                  ),
                  const Spacer(),
                  Text(
                    '\$$prizeValue',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          indent: 4,
          endIndent: 4,
          height: 35,
          thickness: 1,
        ),
      ],
    );
  }
}
