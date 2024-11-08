import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/general/hotel/data/blocs/reserve/reserve_bloc.dart';
import 'package:hotel_example/view/pages/reserv_page/cubit/reserve_page_cubit.dart';
import 'package:hotel_example/view/widgets/buttons/my_button.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

class ButtonPart extends StatelessWidget {
  const ButtonPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
        topLeft: 15,
        topRight: 15,
        bottomLeft: 15,
        bottomRight: 15,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BlocBuilder<ReserveBloc, ReserveState>(
            builder: (context, state) {
              if (state is HaveReserveState && state.currentOrder != null) {
                return MyCustomButton(
                    text:
                        'Оплатить ${state.currentOrder?.summ.moneyFormatter} ₽',
                    func: context.read<ReservePageCubit>().pressBuy);
              }
              return const SizedBox.shrink();
            },
          ),
        ));
  }
}
