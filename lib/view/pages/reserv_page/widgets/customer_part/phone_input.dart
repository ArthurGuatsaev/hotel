import 'package:flutter/material.dart';

import '../phone_tf.dart';

class PhoneInput extends StatelessWidget {
  final String? hint;
  final String errorMessage;
  final String data;
  final bool? showError;
  final Function(String) onChanged;
  const PhoneInput({
    super.key,
    this.hint,
    this.showError,
    required this.data,
    required this.onChanged,
    required this.errorMessage,
  });
  Color? get backgroundColor => errorMessage.isNotEmpty && showError == true
      ? const Color(0xffEB5757).withOpacity(0.26)
      : Colors.grey[100];

  @override
  Widget build(BuildContext context) {
    const borderRadius = 8.0;
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor),
      padding: const EdgeInsets.only(left: 12),
      child: const Row(
        children: [
          Text('+7 ('),
          PhoneTF(phoneIndex: 0),
          PhoneTF(phoneIndex: 1),
          PhoneTF(phoneIndex: 2),
          Text(')-'),
          PhoneTF(phoneIndex: 3),
          PhoneTF(phoneIndex: 4),
          PhoneTF(phoneIndex: 5),
          Text('-'),
          PhoneTF(phoneIndex: 6),
          PhoneTF(phoneIndex: 7),
          Text('-'),
          PhoneTF(phoneIndex: 8),
          PhoneTF(phoneIndex: 9),
        ],
      ),
    );
  }
}
