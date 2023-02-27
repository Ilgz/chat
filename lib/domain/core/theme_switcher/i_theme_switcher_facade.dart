import 'package:dartz/dartz.dart';

abstract class IThemeSwitcherFacade{
  bool isDarkThemeEnabled();
  Future<Unit> switchSelectedTheme();
}