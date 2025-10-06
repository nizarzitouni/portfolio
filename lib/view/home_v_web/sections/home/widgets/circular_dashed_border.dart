import 'dart:math';

import 'package:flutter/material.dart';

class CircularDashedBorder extends StatefulWidget {
  final String imagePath;
  final double imageSize;
  final double dashWidth;
  final double dashGap;
  final double dashHeight;
  final Color dashColor;
  final double imagePadding;
  final double animationDuration;

  const CircularDashedBorder({
    super.key,
    required this.imagePath,
    this.imageSize = 200.0,
    this.dashWidth = 6.0,
    this.dashGap = 3.0,
    this.dashHeight = 1.0,
    this.dashColor = Colors.black,
    this.imagePadding = 20.0,
    this.animationDuration = 100.0,
  });

  @override
  CircularDashedBorderState createState() => CircularDashedBorderState();
}

class CircularDashedBorderState extends State<CircularDashedBorder> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: widget.animationDuration.toInt()),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final double angle = _controller.value * 2.0 * pi;

        return SizedBox(
          width: widget.imageSize + widget.imagePadding,
          height: widget.imageSize + widget.imagePadding,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: widget.imageSize,
                  height: widget.imageSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ClipOval(
                child: SizedBox(
                  width: widget.imageSize + widget.imagePadding,
                  height: widget.imageSize + widget.imagePadding,
                  child: Transform.rotate(
                    angle: angle,
                    child: CustomPaint(
                      painter: DashedCirclePainter(
                        dashWidth: widget.dashWidth,
                        dashGap: widget.dashGap,
                        dashHeight: widget.dashHeight,
                        color: widget.dashColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class DashedCirclePainter extends CustomPainter {
  final double dashWidth;
  final double dashGap;
  final double dashHeight;
  final Color color;

  DashedCirclePainter({
    required this.dashWidth,
    required this.dashGap,
    required this.dashHeight,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = dashWidth
      ..style = PaintingStyle.stroke;

    final double radius = min(size.width / 2, size.height / 2);
    final double circumference = 2 * pi * radius;
    final int dashCount = (circumference / (dashWidth + dashGap)).floor();

    for (int i = 0; i < dashCount; i++) {
      final double angle = i * 2 * pi / dashCount;
      final double startX = size.width / 2 + radius * cos(angle);
      final double startY = size.height / 2 + radius * sin(angle);
      final double endX = size.width / 2 + (radius - dashHeight) * cos(angle);
      final double endY = size.height / 2 + (radius - dashHeight) * sin(angle);

      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
