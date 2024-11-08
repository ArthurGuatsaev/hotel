import 'package:bloc/bloc.dart';

part 'hotel_page_state.dart';

class HotelPageCubit extends Cubit<HotelPageState> {
  HotelPageCubit() : super(HotelPageState());

  swipeImage(int index) {
    emit(state.copyWith(imageIndex: index));
  }
}
