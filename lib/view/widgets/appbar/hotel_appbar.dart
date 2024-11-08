import 'package:flutter/material.dart';

class HotelAppbar extends StatelessWidget {
  final String text;
  const HotelAppbar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      title: Text(text,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold)),
      centerTitle: true,
      pinned: true,
    );
  }
}
