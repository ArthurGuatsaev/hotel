import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/general/hotel/data/blocs/reserve/reserve_bloc.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

import 'price_item.dart';

class PricePart extends StatelessWidget {
  const PricePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
      topLeft: 15,
      topRight: 15,
      bottomLeft: 15,
      bottomRight: 15,
      child: BlocBuilder<ReserveBloc, ReserveState>(
        builder: (context, state) {
          if (state is HaveReserveState) {
            return Column(
              children: [
                PriceDetailsItem(
                  data: '${state.currentOrder?.tourPrice.moneyFormatter} ₽',
                  title: 'Тур',
                ),
                PriceDetailsItem(
                  data: '${state.currentOrder?.fuelCharge.moneyFormatter} ₽',
                  title: 'Топливный сбор',
                ),
                PriceDetailsItem(
                  data: '${state.currentOrder?.serviceCharge.moneyFormatter} ₽',
                  title: 'Сервисный сбор',
                ),
                PriceDetailsItem(
                  data: '${state.currentOrder?.summ.moneyFormatter} ₽',
                  title: 'К оплате',
                  color: Colors.blue,
                ),
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
