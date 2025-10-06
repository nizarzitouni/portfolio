import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobAbout extends StatelessWidget {
  const MobAbout({super.key});

  void _launchURL() async {
    final uri = Uri.parse('https://nz-dev.web.app/');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          style: const TextStyle(fontSize: 18, color: Colors.white),
          children: [
            const TextSpan(
              text:
                  "I'm a Flutter developer with a Master's in Software Engineering. I build mobile apps for both Android and iOS under my brand ",
            ),
            TextSpan(
              text: 'nz-dev',
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = _launchURL,
            ),
            const TextSpan(
              text:
                  '.\n\nI focus on creating apps that look good and work well. My projects range from AI tools to fitness apps, all built with Flutter. I like to keep my code clean and organized, making it easier to update and maintain over time.\n\nBeyond coding, I enjoy working on 3D art and design. This creative side helps me approach app development from a different angle, adding a unique touch to my work.',
            ),
          ],
        ),
      ),
    );
  }
}
