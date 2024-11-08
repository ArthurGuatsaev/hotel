part of 'hotel_bloc.dart';

sealed class HotelState {}

class NoHotelState extends HotelState {}

class HaveHotelState extends HotelState {
  final List<HotelModel> hotels;
  final List<RoomModel> rooms;

  HaveHotelState({required this.hotels, required this.rooms});
}
