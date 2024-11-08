import 'package:flutter/material.dart';
import 'package:hotel_example/services/navigation/router.dart';
import 'package:hotel_example/view/widgets/appbar/hotel_appbar.dart';
import 'package:hotel_example/view/widgets/buttons/my_button.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const HotelAppbar(text: 'Заказ оплачен'),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: height - 210,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/success.png'),
                        const SizedBox(height: 20),
                        Text(
                          'Ваш заказ принят в работу',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Подтверждение заказа №233 может занять некоторое время (от 1 часа до 1 суток).\nКак только мы получим ответ вам на почту придет уведомление',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.35)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverFillRemaining(
              fillOverscroll: false,
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: MyCustomButton(
                      func: MyNM.instance.pushHome,
                      text: 'Супер',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
