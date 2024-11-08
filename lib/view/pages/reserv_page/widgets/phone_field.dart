import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/view/pages/reserv_page/cubit/reserve_page_cubit.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key});

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  void imput() {
    final phone = '${first.text}${second.text}${third.text}';
    context.read<ReservePageCubit>().enterPhoneForm(phone, 1);
  }

  late final TextEditingController first = TextEditingController(text: '*');
  late final TextEditingController second = TextEditingController(text: '*');
  late final TextEditingController third = TextEditingController(text: '*');
  late final TextEditingController four = TextEditingController(text: '*');
  late final TextEditingController five = TextEditingController(text: '*');
  late final TextEditingController six = TextEditingController(text: '*');
  late final TextEditingController seven = TextEditingController(text: '*');
  late final TextEditingController eight = TextEditingController(text: '*');
  late final TextEditingController nine = TextEditingController(text: '*');

  FocusNode focusFirst = FocusNode();
  FocusNode focusSecond = FocusNode();
  FocusNode focusThird = FocusNode();
  @override
  Widget build(BuildContext context) {
    const width = 10.0;
    const height = 40.0;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('+7('),
        SizedBox(
            width: width,
            height: height,
            child: TextField(
              controller: first,
              // inputFormatters: [LengthLimitingTextInputFormatter(3)],
              focusNode: focusFirst,
              textAlignVertical: TextAlignVertical.top,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              showCursor: true,
              style: const TextStyle(fontSize: 13, color: Colors.black),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 21, left: 1),
                  border: InputBorder.none),

              onChanged: (value) {
                if (value.isEmpty) first.text = '*';
                if (value.isEmpty) {
                  focusFirst.previousFocus();
                } else {
                  focusFirst.nextFocus();
                }
                imput();
              },
            )),
        SizedBox(
            width: width,
            height: height,
            child: TextField(
              controller: second,
              // inputFormatters: [LengthLimitingTextInputFormatter(3)],
              focusNode: focusSecond,
              textAlignVertical: TextAlignVertical.top,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              showCursor: true,
              style: const TextStyle(fontSize: 13, color: Colors.black),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 21, left: 1),
                  border: InputBorder.none),

              onChanged: (value) {
                if (value.sCount == 1) second.text = value.onlyNumber;
                imput();
                if (value.isEmpty) {
                  focusSecond.previousFocus();
                } else {
                  focusSecond.nextFocus();
                }
              },
            )),
        SizedBox(
            width: width,
            height: height,
            child: TextField(
              controller: third,
              // inputFormatters: [LengthLimitingTextInputFormatter(3)],
              focusNode: focusThird,
              textAlignVertical: TextAlignVertical.top,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              showCursor: true,
              style: const TextStyle(fontSize: 13, color: Colors.black),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 21, left: 1),
                  border: InputBorder.none),

              onChanged: (value) {
                if (value.sCount == 1) third.text = value.onlyNumber;
                imput();
                if (value.isEmpty) {
                  focusThird.previousFocus();
                } else {
                  focusThird.nextFocus();
                }
              },
            )),
        const Text(')', style: TextStyle(color: Colors.black)),
        const Text(' '),
        // SizedBox(
        //     width: width,
        //     height: height,
        //     child: TextFormField(
        //       controller: first,
        //       // inputFormatters: [LengthLimitingTextInputFormatter(3)],
        //       focusNode: focusFirst,
        //       textAlignVertical: TextAlignVertical.top,
        //       textInputAction: TextInputAction.next,
        //       keyboardType: TextInputType.number,
        //       showCursor: true,
        //       style: const TextStyle(fontSize: 13, color: Colors.black),
        //       decoration: const InputDecoration(
        //           contentPadding: EdgeInsets.only(bottom: 21, left: 1),
        //           border: InputBorder.none),
        //       onChanged: (value) {
        //         if (value.sCount == 1) {
        //           first.text = '${value.onlyNumber}**';
        //         }
        //         if (value.sCount == 2) {
        //           first.text = '${value.onlyNumber}*';
        //         }
        //         if (value.sCount == 3) {
        //           first.text = value.onlyNumber;
        //         }

        //         imput();
        //         if (value.sCount > 2) focusFirst.nextFocus();
        //         if (value.sCount == 0) focusFirst.previousFocus();
        //       },
        //     )),
        // const Text(
        //   '-',
        //   style: TextStyle(color: Colors.black),
        // ),
        // SizedBox(
        //     width: 22,
        //     height: height,
        //     child: TextFormField(
        //       controller: second,
        //       // inputFormatters: [LengthLimitingTextInputFormatter(2)],
        //       focusNode: focusSecond,
        //       textAlignVertical: TextAlignVertical.top,
        //       textInputAction: TextInputAction.next,
        //       keyboardType: TextInputType.number,
        //       showCursor: true,
        //       style: const TextStyle(fontSize: 13, color: Colors.black),
        //       decoration: const InputDecoration(
        //           contentPadding: EdgeInsets.only(bottom: 21, left: 1),
        //           border: InputBorder.none),
        //       onChanged: (value) {
        //         if (value.sCount == 1) {
        //           second.text = '${value.onlyNumber}*';
        //         }

        //         if (value.sCount == 2) {
        //           second.text = value.onlyNumber;
        //         }

        //         imput();
        //         if (value.sCount > 1) focusSecond.nextFocus();
        //         if (value.sCount == 0) focusSecond.previousFocus();
        //       },
        //     )),
        // const Text(
        //   '-',
        //   style: TextStyle(color: Colors.black),
        // ),
        // SizedBox(
        //     width: 22,
        //     height: height,
        //     child: TextFormField(
        //       controller: third,
        //       // inputFormatters: [LengthLimitingTextInputFormatter(2)],
        //       focusNode: focusThird,
        //       textAlignVertical: TextAlignVertical.top,
        //       textInputAction: TextInputAction.next,
        //       keyboardType: TextInputType.number,
        //       showCursor: true,
        //       style: const TextStyle(fontSize: 13, color: Colors.black),
        //       decoration: const InputDecoration(
        //           contentPadding: EdgeInsets.only(bottom: 21, left: 1),
        //           border: InputBorder.none),
        //       onChanged: (value) {
        //         if (value.sCount == 1) {
        //           third.text = '${value.onlyNumber}*';
        //         }

        //         if (value.sCount == 2) {
        //           third.text = value.onlyNumber;
        //         }

        //         imput();
        //         if (value.sCount > 1) focusThird.nextFocus();
        //         if (value.sCount == 0) focusThird.previousFocus();
        //       },
        //     )),
        // const Text(
        //   '',
        //   style: TextStyle(color: Colors.black),
        // ),
      ],
    );
  }
}
