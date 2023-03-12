part of 'locale_switcher_cubit.dart';

@freezed
class LocaleSwitcherState with _$LocaleSwitcherState {
  factory LocaleSwitcherState.initial() =>LocaleSwitcherState(LocaleEnum.RU,null);
  factory LocaleSwitcherState(LocaleEnum localeEnum,FlutterLocalization? flutterLocalization) = _LocaleSwitcherState;
}