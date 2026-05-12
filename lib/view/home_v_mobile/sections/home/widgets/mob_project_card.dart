import 'package:flutter/material.dart';

import '../../../../../core/pallete.dart';
import '../../../../../core/routes/app_router.dart';
import '../../../../../core/singlton_init.dart';
import '../../../../../models/project_model.dart';
import '../../../../home_v_web/widgets/project_links_widget.dart';

class MobProjectCard extends StatelessWidget {
  const MobProjectCard({super.key, required this.projectModel});
  final ProjectModel projectModel;

  static const Color _windowBarColor = Color(0xFF1C1C1C);
  static const Color _hairline = Color(0xFF2E2E2E);
  static const Color _greyText = Color(0xFFABB2BF);

  String get _windowPath {
    final slug = projectModel.projectTitle
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
        .replaceAll(RegExp(r'^_+|_+$'), '');
    return '~/projects/$slug';
  }

  String get _tagline {
    final t = projectModel.tagline?.trim();
    if (t != null && t.isNotEmpty) return t;
    final d = projectModel.projectDescription.trim();
    final match = RegExp(r'^.*?[.!?](\s|$)').firstMatch(d);
    return (match?.group(0) ?? d).trim();
  }

  String get _techLine {
    final tech = projectModel.techStacks;
    final shown = tech.take(5).join('   ·   ');
    final extra = tech.length - 5;
    return extra > 0 ? '$shown   +$extra' : shown;
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await analytics.logEvent(
            name: 'project_clicks_tracked',
            parameters: {
              'project_name': projectModel.projectTitle,
            },
          );
          AppRouter.router.go('/projects/${projectModel.projectId}');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Pallete.blackColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.50, color: _greyText),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .4),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(9.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // window chrome bar
                Container(
                  height: 32,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: const BoxDecoration(
                    color: _windowBarColor,
                    border: Border(bottom: BorderSide(color: _hairline, width: 0.5)),
                  ),
                  child: Row(
                    children: [
                      _trafficDot(const Color(0xFFFF5F57)),
                      const SizedBox(width: 7),
                      _trafficDot(const Color(0xFFFEBC2E)),
                      const SizedBox(width: 7),
                      _trafficDot(const Color(0xFF28C840)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _windowPath,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: _greyText,
                            fontSize: 12,
                            fontFeatures: [FontFeature.tabularFigures()],
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // cover — landscape covers locked into a 16:9 frame
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    color: _windowBarColor,
                    child: Image.asset(
                      projectModel.projectImageModel.projectCover,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      cacheWidth: 800,
                      filterQuality: FilterQuality.low,
                    ),
                  ),
                ),
                Container(height: 0.5, color: _hairline),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        projectModel.projectTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _tagline,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: _greyText,
                          fontSize: 16,
                          height: 1.45,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        _techLine,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: _greyText,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 14),
                      ProjectLinksWidget(projectModel: projectModel),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }

  Widget _trafficDot(Color color) => Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      );
}
