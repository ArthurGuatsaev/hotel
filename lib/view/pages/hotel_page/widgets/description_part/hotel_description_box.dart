import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/widgets/wrappers/part_wrapper.dart';

class HotelDescriptionBox extends StatelessWidget {
  const HotelDescriptionBox({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Об отеле',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 20),
        Wrap(
            runSpacing: 10,
            spacing: 10,
            children: hotel.aboutHotel.pecularities
                .map((e) => PecularitiesWrapper(text: e))
                .toList()),
        const SizedBox(height: 20),
        Row(children: [
          Expanded(
              child: Text(
            hotel.aboutHotel.description,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: FontWeight.w500, height: 1.4),
          ))
        ]),
        const SizedBox(height: 20),
      ],
    );
  }
}
