class CustomerValidator {
  static String? phoneValidator(String value) {
    if (value.isEmpty) return 'Форма пустая';
    if (value.contains('*')) return 'Некорректный символ';
    return null;
  }

  static String? emailValidator(String value) {
    if (value.isEmpty) return 'Форма пустая';
    if (!value.contains('@')) return 'Некорректный email';
    return null;
  }
}
