part of 'theme_switcher_cubit.dart';

@freezed
class ThemeSwitcherState with _$ThemeSwitcherState {
   factory ThemeSwitcherState.initial() =>ThemeSwitcherState(false);
   factory ThemeSwitcherState(bool isDark) = _ThemeSwitcherState;
}
