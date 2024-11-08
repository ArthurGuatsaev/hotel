import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/widgets/wrappers/card_wrapper.dart';

import 'hotel_description_box.dart';
import 'hotel_services_box.dart';

class HotelDescriptionPart extends StatelessWidget {
  const HotelDescriptionPart({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      topLeft: 15,
      topRight: 15,
      bottomLeft: 15,
      bottomRight: 15,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 40),
        child: Column(
          children: [
            HotelDescriptionBox(hotel: hotel),
            const HotelServiceBox(),
          ],
        ),
      ),
    );
  }
}
