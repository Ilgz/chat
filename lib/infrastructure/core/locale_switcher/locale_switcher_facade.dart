import 'package:chat/domain/core/locale_switcher/i_locale_switcher_facade.dart';
import 'package:chat/presentation/core/constants.dart';
import 'package:chat/presentation/core/enums/locale_enum.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILocaleSwitcherFacade)
class LocaleSwitcherFacade implements ILocaleSwitcherFacade {
  final SharedPreferences sharedPreferences;

  LocaleSwitcherFacade(this.sharedPreferences);

  @override
  LocaleEnum getLocale() {
    final String localeString =
        sharedPreferences.getString(AppConstants.locale) ??
            LocaleEnum.RU.description;
    return LocaleEnum.values.firstWhere(
        (locale) => locale.description == localeString,
        orElse: () => LocaleEnum.RU);
  }

  @override
  Future<Unit> switchSelectedLocale(LocaleEnum localeEnum) async {
    await sharedPreferences.setString(
        AppConstants.locale, localeEnum.description);
    return unit;
  }
}
