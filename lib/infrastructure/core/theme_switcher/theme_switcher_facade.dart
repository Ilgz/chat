import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chat/domain/core/theme_switcher/i_theme_switcher_facade.dart';
import 'package:chat/presentation/core/constants.dart';

@LazySingleton(as:IThemeSwitcherFacade)
class ThemeSwitcherFacade implements IThemeSwitcherFacade{
  final SharedPreferences sharedPreferences;
  ThemeSwitcherFacade(this.sharedPreferences);
  @override
  bool isDarkThemeEnabled() {
    final bool isDark =  sharedPreferences.getBool(AppConstants.isDark)??false;
    return isDark;
  }
  @override
  Future<Unit> switchSelectedTheme() async{
    await sharedPreferences.setBool(AppConstants.isDark, !isDarkThemeEnabled());
    return unit;
  }

}