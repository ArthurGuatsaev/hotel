import 'package:dio/dio.dart';

import '../../../domain/repositories/hotel/base_hotel_repository.dart';
import '../../client/dio_client.dart';

class HotelRepository extends BaseHotelRepository {
  final client = RestClient(Dio());

  // получаем список отелей
  @override
  Future<void> getHotels() async {
    hotels = await client.getHotels();
  }

  // получаем данные для номеров в каждом отеле
  @override
  Future<void> getRooms() async {
    rooms = await client.getRooms();
  }
}
