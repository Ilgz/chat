part of 'locale_switcher_cubit.dart';


@freezed
class LocaleSwitcherState with _$LocaleSwitcherState {
  factory LocaleSwitcherState.initial() =>LocaleSwitcherState(LocaleEnum.RU);
  factory LocaleSwitcherState(LocaleEnum localeEnum) = _LocaleSwitcherState;
}