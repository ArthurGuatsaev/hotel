// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TouristModelImpl _$$TouristModelImplFromJson(Map<String, dynamic> json) =>
    _$TouristModelImpl(
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      dateOfB: json['dateOfB'] as String,
      country: json['country'] as String,
      passportNumber: json['passportNumber'] as String,
      passportPeriod: json['passportPeriod'] as String,
    );

Map<String, dynamic> _$$TouristModelImplToJson(_$TouristModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'dateOfB': instance.dateOfB,
      'country': instance.country,
      'passportNumber': instance.passportNumber,
      'passportPeriod': instance.passportPeriod,
    };
