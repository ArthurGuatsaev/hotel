import 'package:flutter/material.dart';

class LoadText extends StatelessWidget {
  final String value;
  const LoadText({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(value);
  }
}
