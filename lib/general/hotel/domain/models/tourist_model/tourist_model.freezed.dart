// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tourist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TouristModel _$TouristModelFromJson(Map<String, dynamic> json) {
  return _TouristModel.fromJson(json);
}

/// @nodoc
mixin _$TouristModel {
  String get name => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get dateOfB => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get passportNumber => throw _privateConstructorUsedError;
  String get passportPeriod => throw _privateConstructorUsedError;

  /// Serializes this TouristModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TouristModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TouristModelCopyWith<TouristModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristModelCopyWith<$Res> {
  factory $TouristModelCopyWith(
          TouristModel value, $Res Function(TouristModel) then) =
      _$TouristModelCopyWithImpl<$Res, TouristModel>;
  @useResult
  $Res call(
      {String name,
      String lastName,
      String dateOfB,
      String country,
      String passportNumber,
      String passportPeriod});
}

/// @nodoc
class _$TouristModelCopyWithImpl<$Res, $Val extends TouristModel>
    implements $TouristModelCopyWith<$Res> {
  _$TouristModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TouristModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? dateOfB = null,
    Object? country = null,
    Object? passportNumber = null,
    Object? passportPeriod = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfB: null == dateOfB
          ? _value.dateOfB
          : dateOfB // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportPeriod: null == passportPeriod
          ? _value.passportPeriod
          : passportPeriod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TouristModelImplCopyWith<$Res>
    implements $TouristModelCopyWith<$Res> {
  factory _$$TouristModelImplCopyWith(
          _$TouristModelImpl value, $Res Function(_$TouristModelImpl) then) =
      __$$TouristModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String lastName,
      String dateOfB,
      String country,
      String passportNumber,
      String passportPeriod});
}

/// @nodoc
class __$$TouristModelImplCopyWithImpl<$Res>
    extends _$TouristModelCopyWithImpl<$Res, _$TouristModelImpl>
    implements _$$TouristModelImplCopyWith<$Res> {
  __$$TouristModelImplCopyWithImpl(
      _$TouristModelImpl _value, $Res Function(_$TouristModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TouristModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lastName = null,
    Object? dateOfB = null,
    Object? country = null,
    Object? passportNumber = null,
    Object? passportPeriod = null,
  }) {
    return _then(_$TouristModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfB: null == dateOfB
          ? _value.dateOfB
          : dateOfB // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      passportNumber: null == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String,
      passportPeriod: null == passportPeriod
          ? _value.passportPeriod
          : passportPeriod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TouristModelImpl implements _TouristModel {
  const _$TouristModelImpl(
      {required this.name,
      required this.lastName,
      required this.dateOfB,
      required this.country,
      required this.passportNumber,
      required this.passportPeriod});

  factory _$TouristModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TouristModelImplFromJson(json);

  @override
  final String name;
  @override
  final String lastName;
  @override
  final String dateOfB;
  @override
  final String country;
  @override
  final String passportNumber;
  @override
  final String passportPeriod;

  @override
  String toString() {
    return 'TouristModel(name: $name, lastName: $lastName, dateOfB: $dateOfB, country: $country, passportNumber: $passportNumber, passportPeriod: $passportPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.dateOfB, dateOfB) || other.dateOfB == dateOfB) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.passportPeriod, passportPeriod) ||
                other.passportPeriod == passportPeriod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastName, dateOfB, country,
      passportNumber, passportPeriod);

  /// Create a copy of TouristModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TouristModelImplCopyWith<_$TouristModelImpl> get copyWith =>
      __$$TouristModelImplCopyWithImpl<_$TouristModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TouristModelImplToJson(
      this,
    );
  }
}

abstract class _TouristModel implements TouristModel {
  const factory _TouristModel(
      {required final String name,
      required final String lastName,
      required final String dateOfB,
      required final String country,
      required final String passportNumber,
      required final String passportPeriod}) = _$TouristModelImpl;

  factory _TouristModel.fromJson(Map<String, dynamic> json) =
      _$TouristModelImpl.fromJson;

  @override
  String get name;
  @override
  String get lastName;
  @override
  String get dateOfB;
  @override
  String get country;
  @override
  String get passportNumber;
  @override
  String get passportPeriod;

  /// Create a copy of TouristModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TouristModelImplCopyWith<_$TouristModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
