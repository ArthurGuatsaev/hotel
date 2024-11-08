import 'package:bloc/bloc.dart';

part 'room_page_state.dart';

class RoomPageCubit extends Cubit<RoomPageState> {
  RoomPageCubit() : super(RoomPageState());

  swipeImage(int index) {
    emit(state.copyWith(imageIndex: index));
  }
}
