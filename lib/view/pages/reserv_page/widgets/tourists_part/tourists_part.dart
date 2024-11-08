import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_example/const/extension.dart';
import 'package:hotel_example/general/hotel/data/blocs/reserve/reserve_bloc.dart';
import 'package:hotel_example/general/hotel/domain/models/customer_model/customer_model.dart';
import 'package:hotel_example/view/pages/reserv_page/cubit/reserve_page_cubit.dart';
import 'package:hotel_example/view/pages/reserv_page/widgets/tourist_form/cubit/tourist_cubit.dart';
import 'package:hotel_example/view/widgets/text_fields/my_tf.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';

class TouristsPart extends StatelessWidget {
  const TouristsPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
        topLeft: 15,
        topRight: 15,
        bottomLeft: 15,
        bottomRight: 15,
        child: BlocBuilder<ReserveBloc, ReserveState>(
          builder: (context, reserve) {
            if (reserve is! HaveReserveState) return const SizedBox();
            return Column(
              children: [
                for (var i = 0; i < reserve.touristNumber; i++)
                  BlocProvider(
                    create: (context) => TouristCubit(),
                    child: BlocListener<ReservePageCubit, ReservePageState>(
                      listener: (context, state) {
                        // чтобы кубит понял что нужно начать проверку форм и отправлять готовых туристов в репо
                        if (state.needCheck) {
                          context.read<TouristCubit>().sendTourist();
                          // добавляем покупателя
                          if (!state.isError) {
                            context.read<ReserveBloc>().add(SendOrderEvent(
                                customer: CustomerModel(
                                    phone: state.phone.data,
                                    email: state.email.data)));
                          }
                        }
                      },
                      child: BlocBuilder<TouristCubit, TouristState>(
                        builder: (context, state) {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${i.numberString} турист',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(fontWeight: FontWeight.w600),
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(
                                      'assets/images/icons/more_icon.svg'),
                                ],
                              ),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterNameForm,
                                  errorMessage: state.name.errorMessage,
                                  data: state.name.data,
                                  hint: 'Имя'),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterLastNameForm,
                                  errorMessage: state.lastName.errorMessage,
                                  data: state.lastName.data,
                                  hint: 'Фамилия'),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterDateForm,
                                  errorMessage: state.dateOfB.errorMessage,
                                  data: state.dateOfB.data,
                                  hint: 'Дата рождения'),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterCountryForm,
                                  errorMessage: state.country.errorMessage,
                                  data: state.country.data,
                                  hint: 'Гражданство'),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterPassportNumberForm,
                                  errorMessage:
                                      state.passportNumber.errorMessage,
                                  data: state.passportNumber.data,
                                  hint: 'Номер загранпаспорта'),
                              const SizedBox(height: 10),
                              ReserveTextField(
                                  showError: state.showError,
                                  onChanged: context
                                      .read<TouristCubit>()
                                      .enterPassportPeriodForm,
                                  errorMessage:
                                      state.passportPeriod.errorMessage,
                                  data: state.passportPeriod.data,
                                  hint: 'Срок действия загранпаспорта'),
                              const SizedBox(height: 10),
                              BlocListener<TouristCubit, TouristState>(
                                listener: (context, state) {
                                  if (state.isError) return;
                                  if (state.send) {
                                    // в случае удачного заполнения формы отправка туриста
                                    context.read<ReserveBloc>().add(
                                        SendOrderEvent(tourist: state.tourist));
                                  }
                                },
                                child: const SizedBox.shrink(),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
              ],
            );
          },
        ));
  }
}
