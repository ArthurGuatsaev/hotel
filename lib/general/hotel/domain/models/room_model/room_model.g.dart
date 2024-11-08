// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomModelImpl _$$RoomModelImplFromJson(Map<String, dynamic> json) =>
    _$RoomModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      images: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toInt(),
      pricePer: json['price_per'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RoomModelImplToJson(_$RoomModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_urls': instance.images,
      'price': instance.price,
      'price_per': instance.pricePer,
      'pecularities': instance.pecularities,
    };
