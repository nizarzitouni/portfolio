import 'package:flutter/material.dart';

import '../../../core/pallete.dart';

/// A faux desktop-window frame: a dark title bar with the three "traffic light"
/// dots and a path label, wrapping arbitrary [child] content. Used to give the
/// project detail screens the same window-chrome look as the project cards.
class WindowChrome extends StatelessWidget {
  const WindowChrome({
    super.key,
    required this.label,
    required this.child,
    this.barHeight = 38,
  });

  final String label;
  final Widget child;
  final double barHeight;

  static const Color _barColor = Color(0xFF1C1C1C);
  static const Color _hairline = Color(0xFF2E2E2E);
  static const Color _greyText = Color(0xFFABB2BF);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Pallete.blackColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 0.5, color: _greyText),
        boxShadow: const [
          BoxShadow(color: Color(0x66000000), blurRadius: 14, offset: Offset(0, 6)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: barHeight,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: const BoxDecoration(
                color: _barColor,
                border: Border(bottom: BorderSide(color: _hairline, width: 0.5)),
              ),
              child: Row(
                children: [
                  _dot(const Color(0xFFFF5F57)),
                  const SizedBox(width: 8),
                  _dot(const Color(0xFFFEBC2E)),
                  const SizedBox(width: 8),
                  _dot(const Color(0xFF28C840)),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: _greyText,
                        fontSize: 13,
                        letterSpacing: 0.3,
                        fontFeatures: [FontFeature.tabularFigures()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }

  Widget _dot(Color color) => Container(
        width: 11,
        height: 11,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      );
}

/// kebab-cased project slug used in the window path labels, e.g. `wardrobe_snap`.
String projectSlug(String title) => title
    .toLowerCase()
    .replaceAll(RegExp(r'[^a-z0-9]+'), '_')
    .replaceAll(RegExp(r'^_+|_+$'), '');
