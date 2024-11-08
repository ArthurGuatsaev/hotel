import 'package:bloc/bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/form_validator/tourist/tourist_validator.dart';
import 'package:hotel_example/general/hotel/domain/models/tourist_model/tourist_model.dart';

part 'tourist_state.dart';

class TouristCubit extends Cubit<TouristState> {
  TouristCubit()
      : super(TouristState(
          name: InputFieldForm(validator: TouristValidator.nameValidator),
          lastName:
              InputFieldForm(validator: TouristValidator.lastNameValidator),
          dateOfB: InputFieldForm(validator: TouristValidator.dateValidator),
          country: InputFieldForm(validator: TouristValidator.countryValidator),
          passportNumber: InputFieldForm(
              validator: TouristValidator.passportNumberValidator),
          passportPeriod: InputFieldForm(
              validator: TouristValidator.passportPeriodValidator),
        ));

  enterNameForm(String value) {
    final model = state.name;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(name: newModel));
  }

  enterLastNameForm(String value) {
    final model = state.lastName;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(lastName: newModel));
  }

  enterCountryForm(String value) {
    final model = state.country;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(country: newModel));
  }

  enterDateForm(String value) {
    final model = state.dateOfB;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(dateOfB: newModel));
  }

  enterPassportNumberForm(String value) {
    final model = state.passportNumber;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(passportNumber: newModel));
  }

  enterPassportPeriodForm(String value) {
    final model = state.passportPeriod;
    final errorMessage = model.validator(value) ?? '';
    final newModel = model.copyWith(errorMessage: errorMessage, data: value);
    emit(state.copyWith(passportPeriod: newModel));
  }

  sendTourist() {
    if (!state.isError) return emit(state.copyWith(send: true));
    emit(state.copyWith(showError: true));
  }
}
