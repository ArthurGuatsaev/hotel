import 'package:flutter/material.dart';

class PecularitiesWrapper extends StatelessWidget {
  final String text;
  const PecularitiesWrapper({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black.withOpacity(0.15)),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Colors.black.withOpacity(0.35),
              fontWeight: FontWeight.w700),
        ));
  }
}
