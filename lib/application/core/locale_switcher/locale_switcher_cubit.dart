import 'package:bloc/bloc.dart';
import 'package:chat/domain/core/locale_switcher/i_locale_switcher_facade.dart';
import 'package:chat/presentation/core/enums/locale_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_switcher_state.dart';
part 'locale_switcher_cubit.freezed.dart';
@injectable
class LocaleSwitcherCubit extends Cubit<LocaleSwitcherState> {
  final ILocaleSwitcherFacade localeSwitcherFacade;
  LocaleSwitcherCubit(this.localeSwitcherFacade) : super(LocaleSwitcherState.initial());
  void switchLocale(LocaleEnum localeEnum)async{
    await localeSwitcherFacade.switchSelectedLocale(localeEnum);
    emit(state.copyWith(localeEnum:localeEnum));
  }
  void initializeLocale(){
    emit(state.copyWith(localeEnum: localeSwitcherFacade.getLocale()));
  }
}
