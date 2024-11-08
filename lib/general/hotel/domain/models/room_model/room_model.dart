import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_model.freezed.dart';
part 'room_model.g.dart';

@freezed
class RoomModel with _$RoomModel {
  const factory RoomModel({
    required int id,
    required String name,
    @JsonKey(name: 'image_urls') required List<String> images,
    required int price,
    @JsonKey(name: 'price_per') required String pricePer,
    required List<String> pecularities,
  }) = _RoomModel;
  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);
}
