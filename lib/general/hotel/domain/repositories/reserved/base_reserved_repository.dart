import 'package:hotel_example/general/hotel/domain/models/customer_model/customer_model.dart';
import 'package:hotel_example/general/hotel/domain/models/order_model/order_model.dart';
import 'package:hotel_example/general/hotel/domain/models/reservation_model/reservation_model.dart';
import 'package:hotel_example/general/hotel/domain/models/tourist_model/tourist_model.dart';

abstract class BaseReservedRepository {
  final Map<int, ReservationModel> reserved = {};
  CustomerModel? customer;
  List<TouristModel> tourists = [];
  int touristNumber = 1;
  OrderModel? order;

  Future<void> getReserved();
  void startReserving(int id);
  void addTouristNumber();
  void addTourist(TouristModel tourist);
}
