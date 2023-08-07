import 'package:flutter/material.dart';

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
