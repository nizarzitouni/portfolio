import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/functions.dart';
import '../../../models/project_model.dart';

class ProjectLinksWidget extends StatelessWidget {
  const ProjectLinksWidget({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    final links = <_LinkChip>[
      if (projectModel.liveUrl != null)
        _LinkChip(icon: FontAwesomeIcons.globe, label: 'Live', url: projectModel.liveUrl!),
      if (projectModel.playStoreUrl != null)
        _LinkChip(icon: FontAwesomeIcons.googlePlay, label: 'Play Store', url: projectModel.playStoreUrl!),
      if (projectModel.appStoreUrl != null)
        _LinkChip(icon: FontAwesomeIcons.appStore, label: 'App Store', url: projectModel.appStoreUrl!),
      if (projectModel.githubUrl != null)
        _LinkChip(icon: FontAwesomeIcons.github, label: 'Code', url: projectModel.githubUrl!),
      if (projectModel.behanceLink != null)
        _LinkChip(icon: FontAwesomeIcons.behance, label: 'Behance', url: projectModel.behanceLink!),
    ];

    return Wrap(spacing: 10, runSpacing: 10, children: links);
  }
}

class _LinkChip extends StatefulWidget {
  const _LinkChip({required this.icon, required this.label, required this.url});

  final FaIconData icon;
  final String label;
  final String url;

  @override
  State<_LinkChip> createState() => _LinkChipState();
}

class _LinkChipState extends State<_LinkChip> {
  static const Color _grey = Color(0xFFABB2BF);
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final fg = _hover ? Colors.white : _grey;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        onTap: () => launchWithUri(url: widget.url),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
          decoration: BoxDecoration(
            color: _hover ? Colors.white.withValues(alpha: .06) : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 0.5, color: _hover ? Colors.white : const Color(0xFF3A3A3A)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(widget.icon, size: 13, color: fg),
              const SizedBox(width: 8),
              Text(
                widget.label,
                style: TextStyle(color: fg, fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
