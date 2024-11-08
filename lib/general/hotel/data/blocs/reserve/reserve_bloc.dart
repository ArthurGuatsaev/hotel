import 'package:bloc/bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/customer_model/customer_model.dart';
import 'package:hotel_example/general/hotel/domain/models/order_model/order_model.dart';
import 'package:hotel_example/general/hotel/domain/models/reservation_model/reservation_model.dart';
import 'package:hotel_example/general/hotel/domain/models/tourist_model/tourist_model.dart';
import 'package:hotel_example/general/hotel/domain/repositories/reserved/base_reserved_repository.dart';

part 'reserve_event.dart';
part 'reserve_state.dart';

class ReserveBloc extends Bloc<ReserveEvent, ReserveState> {
  final BaseReservedRepository _reserveR;
  ReserveBloc({required BaseReservedRepository reserveR})
      : _reserveR = reserveR,
        super(NoReserveState()) {
    on<GetReservedEvent>(getReserve);
    on<StartReservedEvent>(startReserve);
    on<AddTouristEvent>(addTourist);
    on<SendOrderEvent>(sendOrder);

    add(GetReservedEvent());
  }

  getReserve(GetReservedEvent event, Emitter<ReserveState> emit) {
    if (_reserveR.reserved.isEmpty) return;
    emit(HaveReserveState(reserved: _reserveR.reserved));
  }

  startReserve(StartReservedEvent event, Emitter<ReserveState> emit) {
    _reserveR.startReserving(event.id);
    emit(HaveReserveState(
        reserved: _reserveR.reserved, currentOrder: _reserveR.order));
  }

  addTourist(AddTouristEvent event, Emitter<ReserveState> emit) {
    _reserveR.addTouristNumber();
    emit(HaveReserveState(
        reserved: _reserveR.reserved,
        currentOrder: _reserveR.order,
        touristNumber: _reserveR.touristNumber));
  }

  sendOrder(SendOrderEvent event, Emitter<ReserveState> emit) {
    if (event.tourist != null) _reserveR.addTourist(event.tourist!);
    if (event.customer != null) _reserveR.customer = event.customer!;
    // проверка все ли туристы добавлены
    if (_reserveR.touristNumber == _reserveR.tourists.length &&
        _reserveR.customer != null) {
      // отправка формы далее, переход на экран успешной отправки
      emit(SuccessReserveState());
    }
  }
}
