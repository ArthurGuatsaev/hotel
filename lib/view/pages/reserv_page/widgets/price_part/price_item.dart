import 'package:flutter/material.dart';

class PriceDetailsItem extends StatelessWidget {
  const PriceDetailsItem({
    super.key,
    required this.data,
    required this.title,
    this.color,
  });
  final String title;
  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.black.withOpacity(0.3),
                fontWeight: FontWeight.w600),
          )),
          Text(
            data,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w500, color: color),
          ),
        ],
      ),
    );
  }
}
