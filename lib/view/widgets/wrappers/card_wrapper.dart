import 'package:flutter/material.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper({
    super.key,
    this.bottomLeft,
    this.bottomRight,
    this.topLeft,
    this.topRight,
    required this.child,
  });

  final double? bottomLeft;
  final double? bottomRight;
  final double? topLeft;
  final double? topRight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(bottomLeft ?? 0),
          bottomRight: Radius.circular(bottomRight ?? 0),
          topLeft: Radius.circular(topLeft ?? 0),
          topRight: Radius.circular(topRight ?? 0),
        ),
        color: Theme.of(context).cardColor,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: child,
    );
  }
}
