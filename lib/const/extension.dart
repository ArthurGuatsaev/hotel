import 'package:intl/intl.dart';

extension NuberString on int {
  String get numberString {
    switch (this) {
      case 0:
        return 'Первый';
      case 1:
        return 'Второй';
      case 2:
        return 'Третий';
      case 3:
        return 'Четвертый';
      case 4:
        return 'Пятый';
      case 5:
        return 'Шестой';
      case 6:
        return 'Седьмой';
      case 7:
        return 'Восьмой';
      default:
        return 'Новый';
    }
  }
}

extension SymCount on String {
  int get sCount {
    return replaceAll(RegExp(r'[^0-9]'), '').length;
  }
}

extension OnlyNumber on String {
  String get onlyNumber {
    return replaceAll(RegExp(r'[^0-9]'), '');
  }
}

extension MoneyFormatter on int {
  String get moneyFormatter {
    final format = NumberFormat.decimalPattern('ru');
    return format.format(this);
  }
}
