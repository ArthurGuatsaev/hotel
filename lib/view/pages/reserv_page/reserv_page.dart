import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/general/hotel/data/blocs/reserve/reserve_bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/view/pages/error_page.dart/error_page.dart';
import 'package:hotel_example/view/pages/success_page/success_page.dart';
import 'package:hotel_example/view/widgets/adaptive/adaptive_screen.dart';

import 'cubit/reserve_page_cubit.dart';
import 'small/reserve_small.dart';

class ReservePage extends StatefulWidget {
  final HotelModel? hotel;
  final int? roomId;
  const ReservePage({super.key, required this.hotel, required this.roomId});

  @override
  State<ReservePage> createState() => _ReservePageState();
}

class _ReservePageState extends State<ReservePage> {
  @override
  void initState() {
    // начало бронирования, здесь задаются начальные цены (вставляется здесь для корректной работы deeplink)
    if (widget.roomId != null) {
      context.read<ReserveBloc>().add(StartReservedEvent(id: widget.roomId!));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReservePageCubit(),
      child: BlocBuilder<ReserveBloc, ReserveState>(
        builder: (context, state) {
          if (state is HaveReserveState &&
              widget.hotel != null &&
              widget.roomId != null) {
            final reserve = state.reserved[widget.roomId];
            return AdaptiveScreen(
              largeScreen: ReserveSmall(hotel: widget.hotel!, reserve: reserve),
              middleScreen:
                  ReserveSmall(hotel: widget.hotel!, reserve: reserve),
              smallScreen: ReserveSmall(hotel: widget.hotel!, reserve: reserve),
            );
          }
          if (state is SuccessReserveState) return const SuccessPage();

          return const ErrorPage();
        },
      ),
    );
  }
}
