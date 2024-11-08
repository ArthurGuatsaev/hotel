import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourist_model.freezed.dart';
part 'tourist_model.g.dart';

@freezed
class TouristModel with _$TouristModel {
  const factory TouristModel({
    required String name,
    required String lastName,
    required String dateOfB,
    required String country,
    required String passportNumber,
    required String passportPeriod,
  }) = _TouristModel;
  factory TouristModel.fromJson(Map<String, dynamic> json) =>
      _$TouristModelFromJson(json);
}
