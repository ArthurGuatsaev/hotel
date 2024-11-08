import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/view/pages/reserv_page/cubit/reserve_page_cubit.dart';

class PhoneTF extends StatefulWidget {
  final int phoneIndex;
  const PhoneTF({super.key, required this.phoneIndex});

  @override
  State<PhoneTF> createState() => _PhoneTFState();
}

class _PhoneTFState extends State<PhoneTF> {
  TextEditingController number = TextEditingController();
  FocusNode focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10,
      height: 40,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Text(number.text.isEmpty ? '*' : number.text),
          TextField(
            decoration: const InputDecoration(border: InputBorder.none),
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.transparent),
            focusNode: focus,
            keyboardType: const TextInputType.numberWithOptions(),
            onChanged: (value) {
              setState(() {
                if (value.isEmpty) {
                  number.text = '';
                  focus.previousFocus();
                } else {
                  number.text = value;
                  context
                      .read<ReservePageCubit>()
                      .enterPhoneForm(value, widget.phoneIndex);
                  focus.nextFocus();
                }
              });
            },
          )
        ],
      ),
    );
  }
}
