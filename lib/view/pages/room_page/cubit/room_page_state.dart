// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'room_page_cubit.dart';

class RoomPageState {
  final int imageIndex;

  RoomPageState({this.imageIndex = 0});

  RoomPageState copyWith({
    int? imageIndex,
  }) {
    return RoomPageState(
      imageIndex: imageIndex ?? this.imageIndex,
    );
  }
}
