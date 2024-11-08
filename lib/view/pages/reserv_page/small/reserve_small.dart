import 'package:flutter/material.dart';

import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/general/hotel/domain/models/reservation_model/reservation_model.dart';
import 'package:hotel_example/view/pages/error_page.dart/error_page.dart';
import 'package:hotel_example/view/pages/reserv_page/widgets/add_tourist_part/add_tourist_part.dart';
import 'package:hotel_example/view/widgets/appbar/hotel_appbar.dart';

import '../widgets/button_part/button_part.dart';
import '../widgets/customer_part/customer_part.dart';
import '../widgets/details_part/detail_part.dart';
import '../widgets/hotel_part/hote_part.dart';
import '../widgets/price_part/price_part.dart';
import '../widgets/tourists_part/tourists_part.dart';

class ReserveSmall extends StatelessWidget {
  final HotelModel hotel;

  final ReservationModel? reserve;
  const ReserveSmall({super.key, required this.hotel, required this.reserve});

  @override
  Widget build(BuildContext context) {
    if (reserve == null) return const ErrorPage();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HotelAppbar(text: 'Бронирование'),
          ReserveHotelPart(hotel: hotel),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          DetailPart(reserve: reserve),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const CustomerPart(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const TouristsPart(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const AddTouristPart(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const PricePart(),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          const ButtonPart(),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}
