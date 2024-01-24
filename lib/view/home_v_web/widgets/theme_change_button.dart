import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({super.key, this.iconSize});

  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: IconButton(
        onPressed: () {
          AdaptiveTheme.of(context).mode.isDark ? AdaptiveTheme.of(context).setLight() : AdaptiveTheme.of(context).setDark();
        },
        icon: Icon(
          key: ValueKey<bool>(AdaptiveTheme.of(context).mode.isDark),
          AdaptiveTheme.of(context).mode.isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
          size: iconSize ?? 24.0,
        ),
      ),
    );
  }
}
