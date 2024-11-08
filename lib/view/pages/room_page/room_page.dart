import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/general/hotel/data/blocs/hotel/hotel_bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/pages/error_page.dart/error_page.dart';
import 'package:hotel_example/view/widgets/adaptive/adaptive_screen.dart';

import 'cubit/room_page_cubit.dart';
import 'small/room_small.dart';

class RoomPage extends StatelessWidget {
  final HotelModel? hotel;
  const RoomPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RoomPageCubit(),
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is HaveHotelState && hotel != null) {
            final hotelName = hotel!.name;
            return AdaptiveScreen(
              largeScreen: RoomSmall(hotelName: hotelName, rooms: state.rooms),
              middleScreen: RoomSmall(hotelName: hotelName, rooms: state.rooms),
              smallScreen: RoomSmall(hotelName: hotelName, rooms: state.rooms),
            );
          }
          return const ErrorPage();
        },
      ),
    );
  }
}
