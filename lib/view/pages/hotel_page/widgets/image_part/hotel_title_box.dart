import 'package:flutter/material.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';

class HotelTitleBox extends StatelessWidget {
  const HotelTitleBox({super.key, required this.hotel});

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hotel.name,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 5),
        Text(
          hotel.address,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w700, color: Colors.blue),
        ),
        const SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'от ${hotel.minimalPrice.moneyFormatter} ₽ ',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.bold, height: 1),
            ),
            Text(
              'за тур с перелетом',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
