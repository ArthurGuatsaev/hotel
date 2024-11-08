// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tourist_cubit.dart';

class TouristState {
  final bool showError;
  final InputFieldForm name;
  final InputFieldForm lastName;
  final InputFieldForm country;
  final InputFieldForm dateOfB;
  final InputFieldForm passportNumber;
  final InputFieldForm passportPeriod;
  final bool send;
  TouristState({
    this.showError = false,
    required this.name,
    required this.lastName,
    required this.country,
    required this.dateOfB,
    required this.passportNumber,
    required this.passportPeriod,
    this.send = false,
  });

  TouristState copyWith({
    bool? showError,
    InputFieldForm? name,
    InputFieldForm? lastName,
    InputFieldForm? country,
    InputFieldForm? dateOfB,
    InputFieldForm? passportNumber,
    InputFieldForm? passportPeriod,
    bool? send,
  }) {
    return TouristState(
      showError: showError ?? this.showError,
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      country: country ?? this.country,
      dateOfB: dateOfB ?? this.dateOfB,
      passportNumber: passportNumber ?? this.passportNumber,
      passportPeriod: passportPeriod ?? this.passportPeriod,
      send: send ?? this.send,
    );
  }

  bool get isError =>
      name.isError ||
      lastName.isError ||
      country.isError ||
      dateOfB.isError ||
      passportNumber.isError ||
      passportPeriod.isError;

  TouristModel get tourist => TouristModel(
        name: name.data,
        lastName: lastName.data,
        dateOfB: dateOfB.data,
        country: country.data,
        passportNumber: passportNumber.data,
        passportPeriod: passportPeriod.data,
      );
}

class InputFieldForm {
  final String errorMessage;
  final String data;
  final String? Function(String) validator;
  InputFieldForm({
    this.errorMessage = 'Форма пустая',
    this.data = '',
    required this.validator,
  });

  bool get isError => validator(data) != null;
  InputFieldForm copyWith({
    String? errorMessage,
    String? data,
    String? Function(String)? validator,
  }) {
    return InputFieldForm(
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
      validator: validator ?? this.validator,
    );
  }
}
