import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> showScreenshotViewer(BuildContext context, {required List<String> images, required int initialIndex}) {
  return showDialog<void>(
    context: context,
    barrierColor: Colors.black.withAlpha(235),
    builder: (context) => ScreenshotViewer(images: images, initialIndex: initialIndex),
  );
}

class ScreenshotViewer extends StatefulWidget {
  const ScreenshotViewer({super.key, required this.images, required this.initialIndex});

  final List<String> images;
  final int initialIndex;

  @override
  State<ScreenshotViewer> createState() => _ScreenshotViewerState();
}

class _ScreenshotViewerState extends State<ScreenshotViewer> {
  late final PageController _pages = PageController(initialPage: widget.initialIndex);
  late int _current = widget.initialIndex;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  void _go(int delta) {
    final target = (_current + delta).clamp(0, widget.images.length - 1);
    _pages.animateToPage(target, duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.arrowLeft): () => _go(-1),
        const SingleActivator(LogicalKeyboardKey.arrowRight): () => _go(1),
      },
      child: Focus(
        autofocus: true,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pages,
              itemCount: widget.images.length,
              onPageChanged: (i) => setState(() => _current = i),
              itemBuilder: (context, i) => GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 64, 16, 48),
                  child: Center(child: Image.asset(widget.images[i], fit: BoxFit.contain)),
                ),
              ),
            ),
            Positioned(
              top: 12,
              right: 12,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ),
            Positioned(
              top: 24,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: Text(
                  '${_current + 1} / ${widget.images.length}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ),
            ),
            if (_current > 0)
              Positioned(
                left: 12,
                top: 0,
                bottom: 0,
                child: Center(child: _ArrowButton(icon: Icons.chevron_left, onTap: () => _go(-1))),
              ),
            if (_current < widget.images.length - 1)
              Positioned(
                right: 12,
                top: 0,
                bottom: 0,
                child: Center(child: _ArrowButton(icon: Icons.chevron_right, onTap: () => _go(1))),
              ),
          ],
        ),
      ),
    );
  }
}

class _ArrowButton extends StatelessWidget {
  const _ArrowButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onTap,
      style: IconButton.styleFrom(backgroundColor: Colors.white12),
      icon: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
