import 'package:flutter/material.dart';

class CenterTopWidget extends StatelessWidget {
  final Widget myWidget;

  const CenterTopWidget({super.key, required this.myWidget});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 22,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: myWidget,
          ),
        ),
      ],
    );
  }
}
