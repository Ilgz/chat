import 'package:bloc/bloc.dart';
import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:chat/domain/core/locale_switcher/i_locale_switcher_facade.dart';
import 'package:chat/presentation/core/enums/locale_enum.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_switcher_state.dart';
part 'locale_switcher_cubit.freezed.dart';
@injectable
class LocaleSwitcherCubit extends Cubit<LocaleSwitcherState> {
  final ILocaleSwitcherFacade localeSwitcherFacade;
  LocaleSwitcherCubit(this.localeSwitcherFacade) : super(LocaleSwitcherState.initial());
  Future<void> switchLocale(LocaleEnum localeEnum)async{
    await localeSwitcherFacade.switchSelectedLocale(localeEnum);
    emit(state.copyWith(localeEnum:localeEnum,flutterLocalization:(await _createFlutterLocalization(localeEnum))));
  }
  Future<void> initializeLocale()async{
    emit(state.copyWith(localeEnum:localeSwitcherFacade.getLocale(),flutterLocalization: (await _createFlutterLocalization(localeSwitcherFacade.getLocale()))));
  }
  Future<FlutterLocalization> _createFlutterLocalization(LocaleEnum localeEnum)async{
    final  localization = FlutterLocalization.instance;
    await localization.init(
      mapLocales: [
        MapLocale(LocaleEnum.EN.code, AppLocale.EN),
        MapLocale(LocaleEnum.RU.code, AppLocale.RU),
      ],
      initLanguageCode: localeEnum.code,
    );
    return localization;
  }
}
