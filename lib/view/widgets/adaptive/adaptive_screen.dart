import 'package:flutter/material.dart';

class AdaptiveScreen extends StatelessWidget {
  final Widget smallScreen;
  final Widget middleScreen;
  final Widget largeScreen;
  const AdaptiveScreen({
    super.key,
    required this.largeScreen,
    required this.middleScreen,
    required this.smallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return switch (constraints.maxWidth) {
          < 500 => smallScreen,
          < 500 => middleScreen,
          _ => largeScreen,
        };
      },
    );
  }
}
