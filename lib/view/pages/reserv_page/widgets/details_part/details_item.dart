import 'package:flutter/material.dart';

class ReserveDetailsItem extends StatelessWidget {
  const ReserveDetailsItem({
    super.key,
    required this.data,
    required this.title,
  });
  final String title;
  final String data;

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
          Expanded(
              child: Text(
            data,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w500),
          )),
        ],
      ),
    );
  }
}
