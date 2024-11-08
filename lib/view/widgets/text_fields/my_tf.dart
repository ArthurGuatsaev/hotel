import 'package:flutter/material.dart';

class ReserveTextField extends StatelessWidget {
  final String? hint;
  final String errorMessage;
  final String data;
  final bool? showError;
  final Function(String) onChanged;
  const ReserveTextField({
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
    return SizedBox(
      height: 70,
      child: Container(
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          onChanged: onChanged,
          decoration: InputDecoration(
              labelText: hint,
              hintText: hint,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide.none),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
