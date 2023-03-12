enum LocaleEnum {
  RU,
  EN,
}
extension LocaleExtension on LocaleEnum {
  String get description {
    switch (this) {
      case LocaleEnum.RU:
        return 'ru';
      case LocaleEnum.EN:
        return 'en';
      default:
        return "uknown";
    }
  }
}
