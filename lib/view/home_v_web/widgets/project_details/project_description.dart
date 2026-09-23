import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/pallete.dart';
import '../project_detail_content.dart';

const Color _greyText = Color(0xFFABB2BF);
const _bodyStyle = TextStyle(fontSize: 16, color: _greyText, height: 1.55);

/// Renders a project description, turning the hand-typed `♦` / `•` lines into a real bullet list.
class ProjectDescription extends StatelessWidget {
  const ProjectDescription({super.key, required this.text});

  final String text;

  static final _listHeading = RegExp(r'^key (features|contributions|achievements):?$', caseSensitive: false);

  @override
  Widget build(BuildContext context) {
    final lines = text.split('\n').map((l) => l.trim()).where((l) => l.isNotEmpty && !_listHeading.hasMatch(l));
    final children = <Widget>[const ProjectSectionLabel('overview'), const Gap(10)];
    var listStarted = false;

    for (final line in lines) {
      final isBullet = line.startsWith('♦') || line.startsWith('•');
      if (isBullet && !listStarted) {
        listStarted = true;
        children.addAll([const Gap(18), const ProjectSectionLabel('key_features'), const Gap(10)]);
      }
      children.add(
        isBullet
            ? _Bullet(text: line.substring(1).trim())
            : Padding(padding: const EdgeInsets.only(bottom: 12), child: Text(line, style: _bodyStyle)),
      );
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: children);
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    // "Title: detail" bullets get their title in bold.
    final split = text.indexOf(': ');
    final hasTitle = split > 0 && split < 45;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 9, right: 12),
            child: SizedBox.square(dimension: 5, child: DecoratedBox(decoration: BoxDecoration(color: Pallete.mainColor, shape: BoxShape.circle))),
          ),
          Expanded(
            child: Text.rich(
              TextSpan(
                style: _bodyStyle,
                children: hasTitle
                    ? [
                        TextSpan(text: text.substring(0, split + 1), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                        TextSpan(text: text.substring(split + 1)),
                      ]
                    : [TextSpan(text: text)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
