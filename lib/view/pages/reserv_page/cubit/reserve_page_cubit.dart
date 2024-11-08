import 'package:bloc/bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/form_validator/customer/customer_validator.dart';
part 'reserve_page_state.dart';

class ReservePageCubit extends Cubit<ReservePageState> {
  ReservePageCubit()
      : super(ReservePageState(
          phone: InputFieldForm(
              validator: CustomerValidator.phoneValidator, data: '**********'),
          email: InputFieldForm(validator: CustomerValidator.emailValidator),
          needCheck: false,
        ));

  enterPhoneForm(String value, int index) {
    final model = state.phone;
    final newPhone = model.data.replaceRange(index, index + 1, value);
    final errorMessage = model.validator(newPhone) ?? '';
    final newModel = model.copyWith(data: newPhone, errorMessage: errorMessage);
    emit(state.copyWith(phone: newModel));
  }

  enterEmailForm(String value) {
    final model = state.email;
    final errorMessage = model.validator(value) ?? '';
    final newModel =
        model.copyWith(emailErrorMessage: errorMessage, data: value);
    emit(state.copyWith(email: newModel));
  }

  pressBuy() async {
    emit(state.copyWith(needCheck: true, showError: true));
    enterEmailForm(state.email.data);
    await Future.delayed(const Duration(seconds: 1));
    emit(state.copyWith(needCheck: false));
  }
}
