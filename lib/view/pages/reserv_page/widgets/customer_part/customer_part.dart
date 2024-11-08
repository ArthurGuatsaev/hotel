import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_example/view/pages/reserv_page/cubit/reserve_page_cubit.dart';
import 'package:hotel_example/view/widgets/text_fields/my_tf.dart';
import 'package:hotel_example/view/widgets/wrappers/sliver_card_part_wrapper.dart';
import 'phone_input.dart';

class CustomerPart extends StatelessWidget {
  const CustomerPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CardPartWrapper(
        topLeft: 15,
        topRight: 15,
        bottomLeft: 15,
        bottomRight: 15,
        child: BlocBuilder<ReservePageCubit, ReservePageState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Информация о покупателе',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                PhoneInput(
                    onChanged: (value) {},
                    errorMessage: state.phone.errorMessage,
                    data: state.phone.data,
                    showError: state.showError,
                    hint: 'Номер телефона'),
                const SizedBox(height: 10),
                ReserveTextField(
                    onChanged: context.read<ReservePageCubit>().enterEmailForm,
                    errorMessage: state.email.emailErrorMessage,
                    data: state.email.data,
                    showError: true,
                    hint: 'Почта'),
                const SizedBox(height: 10),
                Text(
                  'Эти данные никуда не передаются. После оплаты мы вышлем чек на указынный вами номер и почту',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black.withOpacity(0.3),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
              ],
            );
          },
        ));
  }
}
