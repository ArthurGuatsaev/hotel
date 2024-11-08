import 'package:flutter/material.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/services/navigation/router.dart';
import 'package:hotel_example/view/widgets/buttons/my_button.dart';
import 'package:hotel_example/view/widgets/wrappers/card_wrapper.dart';

class HotelButton extends StatelessWidget {
  final HotelModel hotel;
  const HotelButton({
    super.key,
    required this.hotel,
  });

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
            SizedBox(
                width: double.infinity,
                height: 48,
                child: MyCustomButton(
                  func: () => MyNM.instance.pushRoom(hotel),
                  text: 'К выбору номера',
                ))
          ],
        ),
      ),
    );
  }
}
