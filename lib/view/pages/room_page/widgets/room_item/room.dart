import 'package:flutter/material.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/general/hotel/domain/models/room_model/room_model.dart';
import 'package:hotel_example/services/navigation/router.dart';
import 'package:hotel_example/view/widgets/buttons/my_button.dart';
import 'package:hotel_example/view/widgets/wrappers/card_wrapper.dart';
import 'package:hotel_example/view/widgets/wrappers/more_wrapper.dart';
import 'package:hotel_example/view/widgets/wrappers/part_wrapper.dart';

import '../room_image_part/image_box.dart';

class RoomItem extends StatelessWidget {
  const RoomItem({
    super.key,
    required this.room,
  });

  final RoomModel room;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CardWrapper(
        topLeft: 15,
        topRight: 15,
        bottomLeft: 15,
        bottomRight: 15,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RoomImageBox(images: room.images),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: Text(
                  room.name,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ))
              ],
            ),
            const SizedBox(height: 10),
            Wrap(
              runSpacing: 10,
              spacing: 10,
              children: room.pecularities
                  .map((e) => PecularitiesWrapper(text: e))
                  .toList(),
            ),
            const SizedBox(height: 10),
            const MoreWrapper(text: 'Подробнее о номере'),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${room.price.moneyFormatter} ₽ ',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.bold, height: 1),
                  ),
                  Text(
                    'за 7 ночей с перелетом',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: MyCustomButton(
                func: () => MyNM.instance.pushReseve(room.id),
                text: 'Выбрать номер',
              ),
            )
          ]),
        ),
      ),
    );
  }
}
