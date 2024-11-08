import 'package:flutter/material.dart';

import 'card_wrapper.dart';

class CardPartWrapper extends StatelessWidget {
  const CardPartWrapper({
    super.key,
    required this.child,
    this.bottomLeft,
    this.bottomRight,
    this.topRight,
    this.topLeft,
  });

  final Widget child;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CardWrapper(
          bottomLeft: bottomLeft,
          bottomRight: bottomRight,
          topLeft: topLeft,
          topRight: topRight,
          child: child),
    );
  }
}
