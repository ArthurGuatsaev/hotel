import '../../models/hotel_model/hotel_model.dart';
import '../../models/room_model/room_model.dart';

abstract class BaseHotelRepository {
  List<HotelModel>? hotels;
  List<RoomModel>? rooms;

  Future<void> getHotels();
  Future<void> getRooms();
}
