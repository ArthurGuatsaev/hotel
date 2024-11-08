import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';

class HotelRating extends StatelessWidget {
  final HotelModel hotel;
  const HotelRating({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: DecoratedBox(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.amber.withOpacity(0.35)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.star, size: 20, color: Colors.amber),
            const SizedBox(width: 3),
            Text(
              hotel.rating.toStringAsFixed(0),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.amber.withOpacity(1),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 3),
            Text(
              hotel.ratingName,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.amber.withOpacity(1),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(width: 3),
          ],
        ),
      ),
    ));
  }
}
