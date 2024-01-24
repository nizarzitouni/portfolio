import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            )),
        Text(".",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).buttonTheme.colorScheme!.primary,
              fontSize: 40,
            ))
      ],
    );
  }
}
