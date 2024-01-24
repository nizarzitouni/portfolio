import 'package:flutter/material.dart';

class HoverUnderlineText extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onClick;

  const HoverUnderlineText({super.key, required this.text, this.onClick, this.textStyle});

  @override
  HoverUnderlineTextState createState() => HoverUnderlineTextState();
}

class HoverUnderlineTextState extends State<HoverUnderlineText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Stack(
        children: [
          GestureDetector(
              onTap: widget.onClick,
              child: Text(
                widget.text,
                style: widget.textStyle,
              )),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            left: isHovered ? 0.0 : 25.0,
            // Adjust the starting position to 25% of the text width
            bottom: 0,
            child: Container(
              height: 2.0,
              width: isHovered ? 35 : 0.0, // Adjust the width
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
        ],
      ),
    );
  }
}
