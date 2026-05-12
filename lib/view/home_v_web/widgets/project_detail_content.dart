import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../core/pallete.dart';
import '../../../core/routes/app_router.dart';
import '../../../models/project_model.dart';
import 'project_links_widget.dart';

const Color _greyText = Color(0xFFABB2BF);
const Color _border = Color(0xFF3A3A3A);

/// The textual side of a project detail screen: title, tagline, overview,
/// role, tech stack and links. Layout-agnostic — the caller decides how wide
/// it is (a column beside the carousel on web, full width on mobile).
class ProjectDetailContent extends StatelessWidget {
  const ProjectDetailContent({super.key, required this.projectModel});
  final ProjectModel projectModel;

  String? get _tagline {
    final t = projectModel.tagline?.trim();
    return (t == null || t.isEmpty) ? null : t;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          projectModel.projectTitle,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700, height: 1.15),
        ),
        if (_tagline != null) ...[
          const Gap(8),
          Text(
            _tagline!,
            style: const TextStyle(fontSize: 18, color: _greyText, height: 1.4),
          ),
        ],
        const Gap(28),
        const ProjectSectionLabel('overview'),
        const Gap(10),
        Text(
          projectModel.projectDescription,
          style: const TextStyle(fontSize: 16, color: _greyText, height: 1.55),
        ),
        const Gap(28),
        const ProjectSectionLabel('role'),
        const Gap(10),
        Text(
          projectModel.role,
          style: const TextStyle(fontSize: 16, color: _greyText, height: 1.55),
        ),
        const Gap(28),
        const ProjectSectionLabel('tech_stack'),
        const Gap(12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [for (final t in projectModel.techStacks) TechPill(t)],
        ),
        const Gap(28),
        const ProjectSectionLabel('links'),
        const Gap(12),
        ProjectLinksWidget(projectModel: projectModel),
      ],
    );
  }
}

/// A code-comment styled section header, e.g. `// overview`.
class ProjectSectionLabel extends StatelessWidget {
  const ProjectSectionLabel(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      '// $text',
      style: const TextStyle(
        color: Pallete.mainColor,
        fontSize: 13,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
        fontFeatures: [FontFeature.tabularFigures()],
      ),
    );
  }
}

class TechPill extends StatelessWidget {
  const TechPill(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 0.5, color: _border),
      ),
      child: Text(
        label,
        style: const TextStyle(color: _greyText, fontSize: 13, fontWeight: FontWeight.w500),
      ),
    );
  }
}

/// Outlined "Back to projects" chip with a hover state, used on detail screens.
class ProjectBackChip extends StatefulWidget {
  const ProjectBackChip({super.key});

  @override
  State<ProjectBackChip> createState() => _ProjectBackChipState();
}

class _ProjectBackChipState extends State<ProjectBackChip> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final Color fg = _hover ? Colors.white : _greyText;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        onTap: () => context.go(kHomeView),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: _hover ? Colors.white.withValues(alpha: .06) : Colors.transparent,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(width: 0.5, color: _hover ? Colors.white : _border),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.arrow_back_ios_new_rounded, size: 13, color: fg),
              const SizedBox(width: 8),
              Text('Back to projects',
                  style: TextStyle(color: fg, fontSize: 13, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

/// Prev / next project navigation row shown at the bottom of a detail screen.
class ProjectNav extends StatelessWidget {
  const ProjectNav({super.key, required this.prev, required this.next, this.stacked = false});
  final ProjectModel? prev;
  final ProjectModel? next;
  final bool stacked;

  @override
  Widget build(BuildContext context) {
    final prevChip = prev == null
        ? null
        : _NavChip(label: prev!.projectTitle, projectId: prev!.projectId, isNext: false);
    final nextChip = next == null
        ? null
        : _NavChip(label: next!.projectTitle, projectId: next!.projectId, isNext: true);

    if (stacked) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (prevChip != null) prevChip,
          if (prevChip != null && nextChip != null) const Gap(12),
          if (nextChip != null) nextChip,
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        prevChip ?? const SizedBox.shrink(),
        nextChip ?? const SizedBox.shrink(),
      ],
    );
  }
}

class _NavChip extends StatefulWidget {
  const _NavChip({required this.label, required this.projectId, required this.isNext});
  final String label;
  final int projectId;
  final bool isNext;

  @override
  State<_NavChip> createState() => _NavChipState();
}

class _NavChipState extends State<_NavChip> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final Color fg = _hover ? Colors.white : _greyText;
    final cross = widget.isNext ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        onTap: () => context.go('/projects/${widget.projectId}'),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: _hover ? Colors.white.withValues(alpha: .06) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 0.5, color: _hover ? Colors.white : _border),
          ),
          child: Column(
            crossAxisAlignment: cross,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.isNext ? 'next  →' : '←  prev',
                style: const TextStyle(
                    color: Pallete.mainColor, fontSize: 11, letterSpacing: 1.2, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(widget.label, style: TextStyle(color: fg, fontSize: 16, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
