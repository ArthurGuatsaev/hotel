import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/pages/hotel_page/widgets/image_part/hotel_rating.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

import '../hotel_title_box.dart';

class ReserveHotelPart extends StatelessWidget {
  const ReserveHotelPart({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
      topLeft: 15,
      topRight: 15,
      bottomLeft: 15,
      bottomRight: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HotelRating(hotel: hotel),
          const SizedBox(height: 15),
          HotelTitleBox(hotel: hotel),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
