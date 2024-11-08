// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) {
  return _HotelModel.fromJson(json);
}

/// @nodoc
mixin _$HotelModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  AboutHotel get aboutHotel => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  int get minimalPrice => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;

  /// Serializes this HotelModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelModelCopyWith<HotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelModelCopyWith<$Res> {
  factory $HotelModelCopyWith(
          HotelModel value, $Res Function(HotelModel) then) =
      _$HotelModelCopyWithImpl<$Res, HotelModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      AboutHotel aboutHotel,
      @JsonKey(name: 'image_urls') List<String> images,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      double rating,
      @JsonKey(name: 'rating_name') String ratingName});

  $AboutHotelCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class _$HotelModelCopyWithImpl<$Res, $Val extends HotelModel>
    implements $HotelModelCopyWith<$Res> {
  _$HotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? aboutHotel = null,
    Object? images = null,
    Object? minimalPrice = null,
    Object? rating = null,
    Object? ratingName = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutHotelCopyWith<$Res> get aboutHotel {
    return $AboutHotelCopyWith<$Res>(_value.aboutHotel, (value) {
      return _then(_value.copyWith(aboutHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelModelImplCopyWith<$Res>
    implements $HotelModelCopyWith<$Res> {
  factory _$$HotelModelImplCopyWith(
          _$HotelModelImpl value, $Res Function(_$HotelModelImpl) then) =
      __$$HotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      AboutHotel aboutHotel,
      @JsonKey(name: 'image_urls') List<String> images,
      @JsonKey(name: 'minimal_price') int minimalPrice,
      double rating,
      @JsonKey(name: 'rating_name') String ratingName});

  @override
  $AboutHotelCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class __$$HotelModelImplCopyWithImpl<$Res>
    extends _$HotelModelCopyWithImpl<$Res, _$HotelModelImpl>
    implements _$$HotelModelImplCopyWith<$Res> {
  __$$HotelModelImplCopyWithImpl(
      _$HotelModelImpl _value, $Res Function(_$HotelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? aboutHotel = null,
    Object? images = null,
    Object? minimalPrice = null,
    Object? rating = null,
    Object? ratingName = null,
  }) {
    return _then(_$HotelModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotel,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelModelImpl implements _HotelModel {
  const _$HotelModelImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.aboutHotel,
      @JsonKey(name: 'image_urls') required final List<String> images,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName})
      : _images = images;

  factory _$HotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final AboutHotel aboutHotel;
  final List<String> _images;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'minimal_price')
  final int minimalPrice;
  @override
  final double rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;

  @override
  String toString() {
    return 'HotelModel(id: $id, name: $name, address: $address, aboutHotel: $aboutHotel, images: $images, minimalPrice: $minimalPrice, rating: $rating, ratingName: $ratingName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.aboutHotel, aboutHotel) ||
                other.aboutHotel == aboutHotel) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      aboutHotel,
      const DeepCollectionEquality().hash(_images),
      minimalPrice,
      rating,
      ratingName);

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      __$$HotelModelImplCopyWithImpl<_$HotelModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelModelImplToJson(
      this,
    );
  }
}

abstract class _HotelModel implements HotelModel {
  const factory _HotelModel(
          {required final int id,
          required final String name,
          required final String address,
          required final AboutHotel aboutHotel,
          @JsonKey(name: 'image_urls') required final List<String> images,
          @JsonKey(name: 'minimal_price') required final int minimalPrice,
          required final double rating,
          @JsonKey(name: 'rating_name') required final String ratingName}) =
      _$HotelModelImpl;

  factory _HotelModel.fromJson(Map<String, dynamic> json) =
      _$HotelModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  AboutHotel get aboutHotel;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get images;
  @override
  @JsonKey(name: 'minimal_price')
  int get minimalPrice;
  @override
  double get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;

  /// Create a copy of HotelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelModelImplCopyWith<_$HotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutHotel _$AboutHotelFromJson(Map<String, dynamic> json) {
  return _AboutHotel.fromJson(json);
}

/// @nodoc
mixin _$AboutHotel {
  String get description => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;

  /// Serializes this AboutHotel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutHotelCopyWith<AboutHotel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelCopyWith<$Res> {
  factory $AboutHotelCopyWith(
          AboutHotel value, $Res Function(AboutHotel) then) =
      _$AboutHotelCopyWithImpl<$Res, AboutHotel>;
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class _$AboutHotelCopyWithImpl<$Res, $Val extends AboutHotel>
    implements $AboutHotelCopyWith<$Res> {
  _$AboutHotelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value.pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutHotelImplCopyWith<$Res>
    implements $AboutHotelCopyWith<$Res> {
  factory _$$AboutHotelImplCopyWith(
          _$AboutHotelImpl value, $Res Function(_$AboutHotelImpl) then) =
      __$$AboutHotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class __$$AboutHotelImplCopyWithImpl<$Res>
    extends _$AboutHotelCopyWithImpl<$Res, _$AboutHotelImpl>
    implements _$$AboutHotelImplCopyWith<$Res> {
  __$$AboutHotelImplCopyWithImpl(
      _$AboutHotelImpl _value, $Res Function(_$AboutHotelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_$AboutHotelImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$AboutHotelImpl implements _AboutHotel {
  const _$AboutHotelImpl(
      {required this.description, required final List<String> pecularities})
      : _pecularities = pecularities;

  factory _$AboutHotelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutHotelImplFromJson(json);

  @override
  final String description;
  final List<String> _pecularities;
  @override
  List<String> get pecularities {
    if (_pecularities is EqualUnmodifiableListView) return _pecularities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pecularities);
  }

  @override
  String toString() {
    return 'AboutHotel(description: $description, pecularities: $pecularities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHotelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_pecularities));

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutHotelImplCopyWith<_$AboutHotelImpl> get copyWith =>
      __$$AboutHotelImplCopyWithImpl<_$AboutHotelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutHotelImplToJson(
      this,
    );
  }
}

abstract class _AboutHotel implements AboutHotel {
  const factory _AboutHotel(
      {required final String description,
      required final List<String> pecularities}) = _$AboutHotelImpl;

  factory _AboutHotel.fromJson(Map<String, dynamic> json) =
      _$AboutHotelImpl.fromJson;

  @override
  String get description;
  @override
  List<String> get pecularities;

  /// Create a copy of AboutHotel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutHotelImplCopyWith<_$AboutHotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
