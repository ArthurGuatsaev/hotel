import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.text,
    required this.func,
  });
  final String text;
  final Function() func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: func,
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white.withOpacity(0.8), fontWeight: FontWeight.w700),
      ),
    );
  }
}
