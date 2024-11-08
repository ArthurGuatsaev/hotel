import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/general/hotel/data/blocs/hotel/hotel_bloc.dart';
import 'package:hotel_example/view/pages/error_page.dart/error_page.dart';
import 'package:hotel_example/view/pages/hotel_page/cubit/hotel_page_cubit.dart';
import 'package:hotel_example/view/pages/hotel_page/small/hotel_small.dart';
import 'package:hotel_example/view/widgets/adaptive/adaptive_screen.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelPageCubit(),
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is HaveHotelState) {
            final hotels = state.hotels;
            return AdaptiveScreen(
              largeScreen: HotelSmall(hotels: hotels),
              middleScreen: HotelSmall(hotels: hotels),
              smallScreen: HotelSmall(hotels: hotels),
            );
          }
          return const ErrorPage();
        },
      ),
    );
  }
}
