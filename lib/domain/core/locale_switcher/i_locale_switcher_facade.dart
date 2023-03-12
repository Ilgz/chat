import 'package:chat/presentation/core/enums/locale_enum.dart';
import 'package:dartz/dartz.dart';

abstract class ILocaleSwitcherFacade{
  LocaleEnum getLocale();
  Future<Unit> switchSelectedLocale(LocaleEnum localeEnum);
}