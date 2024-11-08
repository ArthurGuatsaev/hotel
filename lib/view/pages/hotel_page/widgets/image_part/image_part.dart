import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/widgets/wrappers/card_wrapper.dart';

import 'hotel_image_box.dart';
import 'hotel_rating.dart';
import 'hotel_title_box.dart';

class HotelImagePart extends StatelessWidget {
  const HotelImagePart({
    super.key,
    required this.hotel,
  });

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      bottomLeft: 15,
      bottomRight: 15,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HotelImageBox(images: hotel.images),
            const SizedBox(height: 20),
            HotelRating(hotel: hotel),
            const SizedBox(height: 15),
            HotelTitleBox(hotel: hotel),
          ],
        ),
      ),
    );
  }
}
