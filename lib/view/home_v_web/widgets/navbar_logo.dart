import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          '< ',
          style: TextStyle(fontSize: 20),
        ),
        const Text(
          'Nizar',
          style: TextStyle(
            fontFamily: 'Agustina',
            fontSize: 20,
          ),
        ),
        Text(
          MediaQuery.of(context).size.width >= 1000 ? ' />\t\t' : ' />',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
