import 'package:dio/dio.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/general/hotel/domain/models/room_model/room_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/models/reservation_model/reservation_model.dart';

part 'dio_client.g.dart';

@RestApi(baseUrl: 'http://node1.flyer-b2b.ru:5001/api')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/hotels')
  Future<List<HotelModel>> getHotels();

  @GET('/rooms')
  Future<List<RoomModel>> getRooms();

  @GET('/reservations')
  Future<List<ReservationModel>> getReservations();
}
