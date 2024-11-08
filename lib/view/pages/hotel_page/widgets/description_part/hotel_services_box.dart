import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HotelServiceBox extends StatelessWidget {
  const HotelServiceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          3,
          (index) => SizedBox(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(index.hotelServ['image'] ?? ''),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              index.hotelServ['1'] ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w600, height: 1),
                            ),
                            const Text('Самое необходимое'),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.navigate_next,
                            size: 35, color: Colors.black)
                      ]),
                ),
              )),
    );
  }
}

extension HotelService on int {
  Map<String, String> get hotelServ {
    switch (this) {
      case 0:
        return {
          'image': 'assets/images/icons/happy_emoji_icon.svg',
          '1': 'Удобства',
        };
      case 1:
        return {
          'image': 'assets/images/icons/checked_icon.svg',
          '1': 'Что включено',
        };
      case 2:
        return {
          'image': 'assets/images/icons/close_icon.svg',
          '1': 'Что не включено',
        };
      default:
        return {
          'image': 'assets/images/close_icon.svg',
          '1': 'Что не включено',
        };
    }
  }
}
