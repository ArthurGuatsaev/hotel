// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'hotel_page_cubit.dart';

class HotelPageState {
  final int imageIndex;

  HotelPageState({this.imageIndex = 0});

  HotelPageState copyWith({
    int? imageIndex,
  }) {
    return HotelPageState(
      imageIndex: imageIndex ?? this.imageIndex,
    );
  }
}
