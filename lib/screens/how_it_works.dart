import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pay_nav_project/screens/my_awards.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 10, 10, 10),
      ),
      child: Wrap(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[800],
                ),
                child: Image.asset(
                  'assets/images/settings.png',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'How It Works',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white70),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  size: 25,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Points(
            unhighlighted1: 'At the bottom of the page you can access the ',
            highlighted: 'Prizes and Point System.',
            onpress: () {
              Navigator.pop(context);
            },
          ),
          const Points(
            unhighlighted1:
                'The points will be given as point system and the prizes will be given as per the ranks achieved.',
          ),
          Points(
            unhighlighted1:
                'You can see several personal & public awards & challenges that can be unlocked in " ',
            highlighted: 'My Status & Awards ',
            onpress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const MyAwards())));
            },
            unhighlighted2: '" page.',
          ),
          const Points(
            unhighlighted1:
                'Points will be given to unlocked Awards & Challenges accepted & succesfully completed.',
          ),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

class Points extends StatelessWidget {
  const Points({
    Key? key,
    required this.unhighlighted1,
    this.onpress,
    this.highlighted,
    this.unhighlighted2,
  }) : super(key: key);

  final String unhighlighted1;
  final String? unhighlighted2;
  final String? highlighted;
  final void Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 5.5,
            width: 5.5,
            decoration: const BoxDecoration(
                color: Colors.white70, shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: unhighlighted1,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white70),
                children: <TextSpan>[
                  TextSpan(
                      text: highlighted,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.amber),
                      recognizer: TapGestureRecognizer()..onTap = onpress),
                  TextSpan(
                    text: unhighlighted2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
