import 'package:dio/dio.dart';
import 'package:hotel_example/general/hotel/domain/models/order_model/order_model.dart';
import 'package:hotel_example/general/hotel/domain/models/tourist_model/tourist_model.dart';
import 'package:hotel_example/general/hotel/domain/repositories/reserved/base_reserved_repository.dart';

import '../../client/dio_client.dart';

class ReservedRepository extends BaseReservedRepository {
  final client = RestClient(Dio());

  // получаем данные для бронирования
  @override
  Future<void> getReserved() async {
    final res = await client.getReservations();
    res.map((e) {
      reserved[e.id] = e;
      return e;
    }).toList();
  }

  @override
  void addTouristNumber() {
    touristNumber += 1;
    // изменение цены тура
    order?.addTourist();
  }

  @override
  void addTourist(TouristModel tourist) {
    if (tourists.contains(tourist)) return;
    tourists.add(tourist);
  }

  @override
  void startReserving(int id) {
    // если не найдено значение по ключу
    if (reserved[id] == null) {
      throw 'Данные для бронирования по этому отелю недоступны';
    }
    // если значение есть определяем начальную стоимость тура
    customer = null;
    touristNumber = 1;
    tourists = [];
    order = OrderModel(reservation: reserved[id]!);
  }
}
