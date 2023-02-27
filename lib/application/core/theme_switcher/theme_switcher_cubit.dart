import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/core/theme_switcher/i_theme_switcher_facade.dart';

part 'theme_switcher_state.dart';
part 'theme_switcher_cubit.freezed.dart';
@injectable
class ThemeSwitcherCubit extends Cubit<ThemeSwitcherState> {
  final IThemeSwitcherFacade themeSwitcherFacade;
  ThemeSwitcherCubit(this.themeSwitcherFacade) : super(ThemeSwitcherState.initial());
  void switchTheme()async{
    await themeSwitcherFacade.switchSelectedTheme();
    emit(state.copyWith(isDark:!state.isDark));
  }
  void initializeTheme(){
    emit(state.copyWith(isDark: themeSwitcherFacade.isDarkThemeEnabled()));
  }
}
