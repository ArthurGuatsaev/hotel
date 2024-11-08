import 'package:bloc/bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/hotel_model/hotel_model.dart';
import 'package:hotel_example/general/hotel/domain/models/room_model/room_model.dart';
import 'package:hotel_example/general/hotel/domain/repositories/hotel/base_hotel_repository.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final BaseHotelRepository _hotelR;
  HotelBloc({required BaseHotelRepository hotelR})
      : _hotelR = hotelR,
        super(NoHotelState()) {
    on<GetHotelEvent>(getHotelAndRoom);

    add(GetHotelEvent());
  }

  getHotelAndRoom(GetHotelEvent event, Emitter<HotelState> emit) {
    if (_hotelR.hotels == null) return;
    if (_hotelR.rooms == null) return;
    emit(HaveHotelState(hotels: _hotelR.hotels!, rooms: _hotelR.rooms!));
  }
}
