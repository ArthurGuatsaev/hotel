// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'reserve_page_cubit.dart';

class ReservePageState {
  final InputFieldForm phone;
  final InputFieldForm email;
  final bool needCheck;
  final bool showError;
  ReservePageState({
    required this.phone,
    required this.email,
    required this.needCheck,
    this.showError = false,
  });

  ReservePageState copyWith({
    InputFieldForm? phone,
    InputFieldForm? email,
    bool? needCheck,
    bool? showError,
  }) {
    return ReservePageState(
        phone: phone ?? this.phone,
        email: email ?? this.email,
        showError: showError ?? this.showError,
        needCheck: needCheck ?? this.needCheck);
  }

  bool get isError => phone.isError || email.isError;
}

class InputFieldForm {
  final String errorMessage;
  final String data;
  final String? Function(String) validator;
  final String emailErrorMessage;
  InputFieldForm({
    this.errorMessage = 'Форма пустая',
    this.data = '',
    required this.validator,
    this.emailErrorMessage = '',
  });

  bool get isError => validator(data) != null;
  InputFieldForm copyWith({
    String? errorMessage,
    String? emailErrorMessage,
    String? data,
    String? Function(String)? validator,
  }) {
    return InputFieldForm(
      emailErrorMessage: emailErrorMessage ?? this.emailErrorMessage,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
      validator: validator ?? this.validator,
    );
  }
}
