// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hotel_example/general/hotel/domain/models/reservation_model/reservation_model.dart';

class OrderModel {
  final ReservationModel reservation;
  OrderModel({required this.reservation})
      : tourPrice = reservation.tourPrice,
        serviceCharge = reservation.serviceCharge,
        fuelCharge = reservation.fuelCharge;
  int tourPrice = 0;
  int serviceCharge = 0;
  int fuelCharge = 0;

  int get summ => tourPrice + serviceCharge + fuelCharge;

  void addTourist() {
    tourPrice += reservation.tourPrice;
    fuelCharge += reservation.fuelCharge;
    serviceCharge += reservation.serviceCharge;
  }
}
