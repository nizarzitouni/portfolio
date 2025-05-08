import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/functions.dart';
import '../../../models/project_model.dart';

class ProjectLinksWidget extends StatelessWidget {
  const ProjectLinksWidget({Key? key, required this.projectModel}) : super(key: key);
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16, // gap between buttons
      runSpacing: 16, // gap between rows
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        // Live button (for websites)
        if (projectModel.liveUrl != null)
          _buildLinkButton(
            context: context,
            label: 'Live <~>',
            url: projectModel.liveUrl!,
            color: const Color(0xFFC778DD),
            textColor: Colors.white,
            icon: Icons.language,
          ),

        // Play Store button
        if (projectModel.playStoreUrl != null)
          _buildLinkButton(
            context: context,
            label: 'Play Store',
            url: projectModel.playStoreUrl!,
            color: const Color(0xFF48FF79), // Green color for Play Store
            textColor: Colors.white,
            icon: FontAwesomeIcons.googlePlay,
          ),

        // App Store button
        if (projectModel.appStoreUrl != null)
          _buildLinkButton(
            context: context,
            label: 'App Store',
            url: projectModel.appStoreUrl!,
            color: const Color(0xFF0D96F6), // Blue color for App Store
            textColor: Colors.white,
            icon: FontAwesomeIcons.appStore,
          ),

        // GitHub button
        if (projectModel.githubUrl != null)
          _buildLinkButton(
            context: context,
            label: 'Github >=',
            url: projectModel.githubUrl!,
            color: const Color(0xFFABB2BF),
            textColor: const Color(0xFFABB2BF),
            icon: FontAwesomeIcons.github,
          ),

        // Behance button
        if (projectModel.behanceLink != null)
          _buildLinkButton(
            context: context,
            label: 'Behance >=',
            url: projectModel.behanceLink!,
            color: const Color(0xFFABB2BF),
            textColor: const Color(0xFFABB2BF),
            icon: FontAwesomeIcons.behance,
          ),
      ],
    );
  }

  Widget _buildLinkButton({
    required BuildContext context,
    required String label,
    required String url,
    required Color color,
    required Color textColor,
    IconData? icon,
  }) {
    return RawMaterialButton(
      onPressed: () {
        launchWithUri(url: url);
      },
      hoverColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50, color: color),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 16,
                color: textColor,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
