// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelModelImpl _$$HotelModelImplFromJson(Map<String, dynamic> json) =>
    _$HotelModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] as String,
      aboutHotel:
          AboutHotel.fromJson(json['aboutHotel'] as Map<String, dynamic>),
      images: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minimalPrice: (json['minimal_price'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
      ratingName: json['rating_name'] as String,
    );

Map<String, dynamic> _$$HotelModelImplToJson(_$HotelModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'aboutHotel': instance.aboutHotel,
      'image_urls': instance.images,
      'minimal_price': instance.minimalPrice,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
    };

_$AboutHotelImpl _$$AboutHotelImplFromJson(Map<String, dynamic> json) =>
    _$AboutHotelImpl(
      description: json['description'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AboutHotelImplToJson(_$AboutHotelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'pecularities': instance.pecularities,
    };
