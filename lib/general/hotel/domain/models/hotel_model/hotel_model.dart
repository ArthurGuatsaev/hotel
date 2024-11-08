import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  const factory HotelModel({
    required int id,
    required String name,
    required String address,
    required AboutHotel aboutHotel,
    @JsonKey(name: 'image_urls') required List<String> images,
    @JsonKey(name: 'minimal_price') required int minimalPrice,
    required double rating,
    @JsonKey(name: 'rating_name') required String ratingName,
  }) = _HotelModel;
  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}

@freezed
class AboutHotel with _$AboutHotel {
  const factory AboutHotel({
    required String description,
    required List<String> pecularities,
  }) = _AboutHotel;
  factory AboutHotel.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelFromJson(json);
}
