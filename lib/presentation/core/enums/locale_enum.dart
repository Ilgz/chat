enum LocaleEnum {
  RU,
  EN,
}
extension LocaleExtension on LocaleEnum {
  String get code {
    switch (this) {
      case LocaleEnum.RU:
        return 'ru';
      case LocaleEnum.EN:
        return 'en';
      default:
        return "unknown";
    }
  }
  String get description {
    switch (this) {
      case LocaleEnum.RU:
        return 'Русский язык';
      case LocaleEnum.EN:
        return 'English language';
      default:
        return "unknown";
    }
  }
}
