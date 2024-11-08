import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/reservation_model/reservation_model.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

import 'details_item.dart';

class DetailPart extends StatelessWidget {
  const DetailPart({
    super.key,
    required this.reserve,
  });

  final ReservationModel? reserve;

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
      topLeft: 15,
      topRight: 15,
      bottomLeft: 15,
      bottomRight: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReserveDetailsItem(data: reserve!.arrivalCountry, title: 'Вылет из'),
          ReserveDetailsItem(
              data: reserve!.arrivalCountry, title: 'Страна, город'),
          ReserveDetailsItem(
              data: '${reserve!.tourDateStart} - ${reserve!.tourDateStop}',
              title: 'Даты'),
          ReserveDetailsItem(
              data: reserve!.numberOfNights, title: 'Кол-во ночей'),
          ReserveDetailsItem(data: reserve!.hotelName, title: 'Отель'),
          ReserveDetailsItem(data: reserve!.room, title: 'Номер'),
          ReserveDetailsItem(data: reserve!.nutrition, title: 'Питание'),
        ],
      ),
    );
  }
}
