import 'package:flutter/material.dart';

class MoreWrapper extends StatelessWidget {
  final String text;
  const MoreWrapper({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.blue.withOpacity(0.15)),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.blue, fontWeight: FontWeight.w700),
        ));
  }
}
