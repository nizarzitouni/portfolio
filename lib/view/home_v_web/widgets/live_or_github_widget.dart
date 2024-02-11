import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../models/project_model.dart';
import '../../../core/functions.dart';

class LiveOrGithubWidget extends StatelessWidget {
  const LiveOrGithubWidget({Key? key, required this.projectModel}) : super(key: key);
  final ProjectModel projectModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (projectModel.isLive)
          RawMaterialButton(
            onPressed: () {
              launchWithUri(url: projectModel.liveUrl!);
            },
            hoverColor: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFC778DD)),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Live <~>',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        // const SizedBox(width: 16),
        const Gap(16),
        if (projectModel.githubUrl != null)
          RawMaterialButton(
            onPressed: () {
              launchWithUri(url: projectModel.githubUrl!);
            },
            hoverColor: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Github >=',
                    style: TextStyle(
                      color: Color(0xFFABB2BF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        const Gap(16),
        if (projectModel.behanceLink != null)
          RawMaterialButton(
            onPressed: () {
              launchWithUri(url: projectModel.behanceLink!);
            },
            hoverColor: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFFABB2BF)),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Behance >=',
                    style: TextStyle(
                      color: Color(0xFFABB2BF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
