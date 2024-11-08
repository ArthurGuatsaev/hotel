import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_example/general/hotel/data/blocs/reserve/reserve_bloc.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

class AddTouristPart extends StatelessWidget {
  const AddTouristPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
        topLeft: 15,
        topRight: 15,
        bottomLeft: 15,
        bottomRight: 15,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Добавить туриста',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () =>
                        context.read<ReserveBloc>().add(AddTouristEvent()),
                    child:
                        SvgPicture.asset('assets/images/icons/add_icon.svg')),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}
