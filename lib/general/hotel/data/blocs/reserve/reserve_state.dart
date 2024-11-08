// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'reserve_bloc.dart';

class ReserveState {}

class NoReserveState extends ReserveState {}

class SuccessReserveState extends ReserveState {}

class HaveReserveState extends ReserveState {
  final Map<int, ReservationModel> reserved;
  final OrderModel? currentOrder;
  final int touristNumber;
  final List<TouristModel> tourists;

  HaveReserveState({
    required this.reserved,
    this.currentOrder,
    this.touristNumber = 1,
    this.tourists = const [],
  });
}
