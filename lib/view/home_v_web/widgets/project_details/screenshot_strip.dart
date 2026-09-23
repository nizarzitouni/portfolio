import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'screenshot_viewer.dart';

class ScreenshotStrip extends StatefulWidget {
  const ScreenshotStrip({super.key, required this.images, required this.height});

  final List<String> images;
  final double height;

  @override
  State<ScreenshotStrip> createState() => _ScreenshotStripState();
}

class _ScreenshotStripState extends State<ScreenshotStrip> {
  final _controller = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cacheHeight = (widget.height * MediaQuery.devicePixelRatioOf(context)).round();
    // The app disables scrollbars and mouse dragging globally; this row needs both to be usable with a mouse.
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        scrollbars: false,
        dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse, PointerDeviceKind.trackpad},
      ),
      child: Scrollbar(
        controller: _controller,
        thumbVisibility: true,
        child: SizedBox(
          height: widget.height + 24,
          child: ListView.separated(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(bottom: 24),
            itemCount: widget.images.length,
            separatorBuilder: (_, _) => const SizedBox(width: 14),
            itemBuilder: (context, i) => MouseRegion(
              cursor: SystemMouseCursors.zoomIn,
              child: GestureDetector(
                onTap: () => showScreenshotViewer(context, images: widget.images, initialIndex: i),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(widget.images[i], height: widget.height, fit: BoxFit.contain, cacheHeight: cacheHeight),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
