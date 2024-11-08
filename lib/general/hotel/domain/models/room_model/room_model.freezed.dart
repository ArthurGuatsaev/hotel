// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomModel _$RoomModelFromJson(Map<String, dynamic> json) {
  return _RoomModel.fromJson(json);
}

/// @nodoc
mixin _$RoomModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get images => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get pricePer => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;

  /// Serializes this RoomModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomModelCopyWith<RoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomModelCopyWith<$Res> {
  factory $RoomModelCopyWith(RoomModel value, $Res Function(RoomModel) then) =
      _$RoomModelCopyWithImpl<$Res, RoomModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_urls') List<String> images,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> pecularities});
}

/// @nodoc
class _$RoomModelCopyWithImpl<$Res, $Val extends RoomModel>
    implements $RoomModelCopyWith<$Res> {
  _$RoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? pricePer = null,
    Object? pecularities = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value.pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomModelImplCopyWith<$Res>
    implements $RoomModelCopyWith<$Res> {
  factory _$$RoomModelImplCopyWith(
          _$RoomModelImpl value, $Res Function(_$RoomModelImpl) then) =
      __$$RoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'image_urls') List<String> images,
      int price,
      @JsonKey(name: 'price_per') String pricePer,
      List<String> pecularities});
}

/// @nodoc
class __$$RoomModelImplCopyWithImpl<$Res>
    extends _$RoomModelCopyWithImpl<$Res, _$RoomModelImpl>
    implements _$$RoomModelImplCopyWith<$Res> {
  __$$RoomModelImplCopyWithImpl(
      _$RoomModelImpl _value, $Res Function(_$RoomModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? price = null,
    Object? pricePer = null,
    Object? pecularities = null,
  }) {
    return _then(_$RoomModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value._pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomModelImpl implements _RoomModel {
  const _$RoomModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'image_urls') required final List<String> images,
      required this.price,
      @JsonKey(name: 'price_per') required this.pricePer,
      required final List<String> pecularities})
      : _images = images,
        _pecularities = pecularities;

  factory _$RoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<String> _images;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int price;
  @override
  @JsonKey(name: 'price_per')
  final String pricePer;
  final List<String> _pecularities;
  @override
  List<String> get pecularities {
    if (_pecularities is EqualUnmodifiableListView) return _pecularities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pecularities);
  }

  @override
  String toString() {
    return 'RoomModel(id: $id, name: $name, images: $images, price: $price, pricePer: $pricePer, pecularities: $pecularities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_images),
      price,
      pricePer,
      const DeepCollectionEquality().hash(_pecularities));

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      __$$RoomModelImplCopyWithImpl<_$RoomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomModelImplToJson(
      this,
    );
  }
}

abstract class _RoomModel implements RoomModel {
  const factory _RoomModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'image_urls') required final List<String> images,
      required final int price,
      @JsonKey(name: 'price_per') required final String pricePer,
      required final List<String> pecularities}) = _$RoomModelImpl;

  factory _RoomModel.fromJson(Map<String, dynamic> json) =
      _$RoomModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images;
  @override
  int get price;
  @override
  @JsonKey(name: 'price_per')
  String get pricePer;
  @override
  List<String> get pecularities;

  /// Create a copy of RoomModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomModelImplCopyWith<_$RoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
