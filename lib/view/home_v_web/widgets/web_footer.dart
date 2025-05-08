import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/pallete.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Pallete.blackColor,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => context.go('/privacy-policy'),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                onPressed: () => context.go('/terms-of-service'),
                child: const Text(
                  'Terms of Service',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
          const Gap(10),
          const Text(
            '© 2025 Your Company Name. All rights reserved.',
            style: TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
