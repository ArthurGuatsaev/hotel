import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/widgets/appbar/hotel_appbar.dart';

import '../widgets/description_part/description_part.dart';
import '../widgets/hotel_button/hotel_button.dart';
import '../widgets/image_part/image_part.dart';

class HotelSmall extends StatelessWidget {
  final List<HotelModel> hotels;
  const HotelSmall({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HotelAppbar(text: 'Отель'),
          SliverList.builder(
            itemCount: hotels.length,
            itemBuilder: (context, index) {
              final hotel = hotels[index];
              return Column(
                children: [
                  HotelImagePart(hotel: hotel),
                  const SizedBox(height: 20),
                  HotelDescriptionPart(hotel: hotel),
                  const SizedBox(height: 20),
                  HotelButton(hotel: hotel),
                  const SizedBox(height: 20),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
