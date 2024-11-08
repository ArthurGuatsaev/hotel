// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationModel _$ReservationModelFromJson(Map<String, dynamic> json) {
  return _ReservationModel.fromJson(json);
}

/// @nodoc
mixin _$ReservationModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge => throw _privateConstructorUsedError;
  int get horating => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_address')
  String get hotelAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String get hotelName => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  String get numberOfNights => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  int get serviceCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  int get tourPrice => throw _privateConstructorUsedError;

  /// Serializes this ReservationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationModelCopyWith<ReservationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationModelCopyWith<$Res> {
  factory $ReservationModelCopyWith(
          ReservationModel value, $Res Function(ReservationModel) then) =
      _$ReservationModelCopyWithImpl<$Res, ReservationModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      String departure,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      int horating,
      @JsonKey(name: 'hotel_address') String hotelAddress,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'number_of_nights') String numberOfNights,
      String nutrition,
      @JsonKey(name: 'rating_name') String ratingName,
      String room,
      @JsonKey(name: 'service_charge') int serviceCharge,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'tour_price') int tourPrice});
}

/// @nodoc
class _$ReservationModelCopyWithImpl<$Res, $Val extends ReservationModel>
    implements $ReservationModelCopyWith<$Res> {
  _$ReservationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arrivalCountry = null,
    Object? departure = null,
    Object? fuelCharge = null,
    Object? horating = null,
    Object? hotelAddress = null,
    Object? hotelName = null,
    Object? numberOfNights = null,
    Object? nutrition = null,
    Object? ratingName = null,
    Object? room = null,
    Object? serviceCharge = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? tourPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      hotelAddress: null == hotelAddress
          ? _value.hotelAddress
          : hotelAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationModelImplCopyWith<$Res>
    implements $ReservationModelCopyWith<$Res> {
  factory _$$ReservationModelImplCopyWith(_$ReservationModelImpl value,
          $Res Function(_$ReservationModelImpl) then) =
      __$$ReservationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'arrival_country') String arrivalCountry,
      String departure,
      @JsonKey(name: 'fuel_charge') int fuelCharge,
      int horating,
      @JsonKey(name: 'hotel_address') String hotelAddress,
      @JsonKey(name: 'hotel_name') String hotelName,
      @JsonKey(name: 'number_of_nights') String numberOfNights,
      String nutrition,
      @JsonKey(name: 'rating_name') String ratingName,
      String room,
      @JsonKey(name: 'service_charge') int serviceCharge,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'tour_price') int tourPrice});
}

/// @nodoc
class __$$ReservationModelImplCopyWithImpl<$Res>
    extends _$ReservationModelCopyWithImpl<$Res, _$ReservationModelImpl>
    implements _$$ReservationModelImplCopyWith<$Res> {
  __$$ReservationModelImplCopyWithImpl(_$ReservationModelImpl _value,
      $Res Function(_$ReservationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? arrivalCountry = null,
    Object? departure = null,
    Object? fuelCharge = null,
    Object? horating = null,
    Object? hotelAddress = null,
    Object? hotelName = null,
    Object? numberOfNights = null,
    Object? nutrition = null,
    Object? ratingName = null,
    Object? room = null,
    Object? serviceCharge = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? tourPrice = null,
  }) {
    return _then(_$ReservationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as int,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as int,
      hotelAddress: null == hotelAddress
          ? _value.hotelAddress
          : hotelAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as int,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationModelImpl implements _ReservationModel {
  const _$ReservationModelImpl(
      {required this.id,
      @JsonKey(name: 'arrival_country') required this.arrivalCountry,
      required this.departure,
      @JsonKey(name: 'fuel_charge') required this.fuelCharge,
      required this.horating,
      @JsonKey(name: 'hotel_address') required this.hotelAddress,
      @JsonKey(name: 'hotel_name') required this.hotelName,
      @JsonKey(name: 'number_of_nights') required this.numberOfNights,
      required this.nutrition,
      @JsonKey(name: 'rating_name') required this.ratingName,
      required this.room,
      @JsonKey(name: 'service_charge') required this.serviceCharge,
      @JsonKey(name: 'tour_date_start') required this.tourDateStart,
      @JsonKey(name: 'tour_date_stop') required this.tourDateStop,
      @JsonKey(name: 'tour_price') required this.tourPrice});

  factory _$ReservationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'arrival_country')
  final String arrivalCountry;
  @override
  final String departure;
  @override
  @JsonKey(name: 'fuel_charge')
  final int fuelCharge;
  @override
  final int horating;
  @override
  @JsonKey(name: 'hotel_address')
  final String hotelAddress;
  @override
  @JsonKey(name: 'hotel_name')
  final String hotelName;
  @override
  @JsonKey(name: 'number_of_nights')
  final String numberOfNights;
  @override
  final String nutrition;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @override
  final String room;
  @override
  @JsonKey(name: 'service_charge')
  final int serviceCharge;
  @override
  @JsonKey(name: 'tour_date_start')
  final String tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String tourDateStop;
  @override
  @JsonKey(name: 'tour_price')
  final int tourPrice;

  @override
  String toString() {
    return 'ReservationModel(id: $id, arrivalCountry: $arrivalCountry, departure: $departure, fuelCharge: $fuelCharge, horating: $horating, hotelAddress: $hotelAddress, hotelName: $hotelName, numberOfNights: $numberOfNights, nutrition: $nutrition, ratingName: $ratingName, room: $room, serviceCharge: $serviceCharge, tourDateStart: $tourDateStart, tourDateStop: $tourDateStop, tourPrice: $tourPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.arrivalCountry, arrivalCountry) ||
                other.arrivalCountry == arrivalCountry) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.fuelCharge, fuelCharge) ||
                other.fuelCharge == fuelCharge) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.hotelAddress, hotelAddress) ||
                other.hotelAddress == hotelAddress) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.numberOfNights, numberOfNights) ||
                other.numberOfNights == numberOfNights) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.tourDateStart, tourDateStart) ||
                other.tourDateStart == tourDateStart) &&
            (identical(other.tourDateStop, tourDateStop) ||
                other.tourDateStop == tourDateStop) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      arrivalCountry,
      departure,
      fuelCharge,
      horating,
      hotelAddress,
      hotelName,
      numberOfNights,
      nutrition,
      ratingName,
      room,
      serviceCharge,
      tourDateStart,
      tourDateStop,
      tourPrice);

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      __$$ReservationModelImplCopyWithImpl<_$ReservationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationModelImplToJson(
      this,
    );
  }
}

abstract class _ReservationModel implements ReservationModel {
  const factory _ReservationModel(
      {required final int id,
      @JsonKey(name: 'arrival_country') required final String arrivalCountry,
      required final String departure,
      @JsonKey(name: 'fuel_charge') required final int fuelCharge,
      required final int horating,
      @JsonKey(name: 'hotel_address') required final String hotelAddress,
      @JsonKey(name: 'hotel_name') required final String hotelName,
      @JsonKey(name: 'number_of_nights') required final String numberOfNights,
      required final String nutrition,
      @JsonKey(name: 'rating_name') required final String ratingName,
      required final String room,
      @JsonKey(name: 'service_charge') required final int serviceCharge,
      @JsonKey(name: 'tour_date_start') required final String tourDateStart,
      @JsonKey(name: 'tour_date_stop') required final String tourDateStop,
      @JsonKey(name: 'tour_price')
      required final int tourPrice}) = _$ReservationModelImpl;

  factory _ReservationModel.fromJson(Map<String, dynamic> json) =
      _$ReservationModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry;
  @override
  String get departure;
  @override
  @JsonKey(name: 'fuel_charge')
  int get fuelCharge;
  @override
  int get horating;
  @override
  @JsonKey(name: 'hotel_address')
  String get hotelAddress;
  @override
  @JsonKey(name: 'hotel_name')
  String get hotelName;
  @override
  @JsonKey(name: 'number_of_nights')
  String get numberOfNights;
  @override
  String get nutrition;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  String get room;
  @override
  @JsonKey(name: 'service_charge')
  int get serviceCharge;
  @override
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop;
  @override
  @JsonKey(name: 'tour_price')
  int get tourPrice;

  /// Create a copy of ReservationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationModelImplCopyWith<_$ReservationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
