// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat/application/auth/auth_bloc.dart' as _i26;
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart'
    as _i15;
import 'package:chat/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i21;
import 'package:chat/application/auth/sign_up_form/sign_up_form_bloc.dart'
    as _i22;
import 'package:chat/application/chat/chat_form_bloc/chat_form_bloc.dart'
    as _i27;
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart'
    as _i28;
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart'
    as _i31;
import 'package:chat/application/projects/project_actor/project_actor_cubit.dart'
    as _i16;
import 'package:chat/application/projects/project_filter/project_filter_bloc.dart'
    as _i17;
import 'package:chat/application/projects/project_form/project_form_bloc.dart'
    as _i18;
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart'
    as _i19;
import 'package:chat/application/projects/tasks/task_actor/task_actor_cubit.dart'
    as _i23;
import 'package:chat/application/projects/tasks/task_form/task_form_bloc.dart'
    as _i24;
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart'
    as _i25;
import 'package:chat/domain/auth/i_auth_facade.dart' as _i7;
import 'package:chat/domain/chat/i_chat_facade.dart' as _i9;
import 'package:chat/domain/core/theme_switcher/i_theme_switcher_facade.dart'
    as _i29;
import 'package:chat/domain/projects/i_project_repository.dart' as _i11;
import 'package:chat/domain/users/i_user_repository.dart' as _i13;
import 'package:chat/infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'package:chat/infrastructure/chat/chat_facade.dart' as _i10;
import 'package:chat/infrastructure/core/app_injectable_module.dart' as _i32;
import 'package:chat/infrastructure/core/theme_switcher/theme_switcher_facade.dart'
    as _i30;
import 'package:chat/infrastructure/projects/project_repository.dart' as _i12;
import 'package:chat/infrastructure/users/user_repository.dart' as _i14;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appInjectableProdModule = _$AppInjectableProdModule();
    gh.lazySingleton<_i3.Client>(() => appInjectableProdModule.httpClient);
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => appInjectableProdModule.firebaseAuthDev);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => appInjectableProdModule.firebaseFirestoreDev);
    gh.lazySingleton<_i6.FlutterSecureStorage>(
        () => appInjectableProdModule.storage);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i9.IChatFacade>(() => _i10.ChatFacade(
          gh<_i5.FirebaseFirestore>(),
          gh<_i7.IAuthFacade>(),
        ));
    gh.lazySingleton<_i11.IProjectRepository>(() => _i12.ProjectRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<_i7.IAuthFacade>(),
          isTest: gh<bool>(),
        ));
    gh.lazySingleton<_i13.IUserRepository>(() => _i14.UserRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i15.ProfileWatcherCubit>(
        () => _i15.ProfileWatcherCubit(gh<_i7.IAuthFacade>()));
    gh.factory<_i16.ProjectActorCubit>(
        () => _i16.ProjectActorCubit(gh<_i11.IProjectRepository>()));
    gh.factory<_i17.ProjectFilterBloc>(() => _i17.ProjectFilterBloc());
    gh.factory<_i18.ProjectFormBloc>(
        () => _i18.ProjectFormBloc(gh<_i11.IProjectRepository>()));
    gh.factory<_i19.ProjectWatcherBloc>(
        () => _i19.ProjectWatcherBloc(gh<_i11.IProjectRepository>()));
    await gh.factoryAsync<_i20.SharedPreferences>(
      () => appInjectableProdModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i21.SignInFormBloc>(
        () => _i21.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i22.SignUpFormBloc>(
        () => _i22.SignUpFormBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i23.TaskActorCubit>(
        () => _i23.TaskActorCubit(gh<_i11.IProjectRepository>()));
    gh.factory<_i24.TaskFormBloc>(
        () => _i24.TaskFormBloc(gh<_i11.IProjectRepository>()));
    gh.factory<_i25.UserWatcherBloc>(
        () => _i25.UserWatcherBloc(gh<_i13.IUserRepository>()));
    gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(gh<_i7.IAuthFacade>()));
    gh.factory<_i27.ChatFormBloc>(
        () => _i27.ChatFormBloc(gh<_i9.IChatFacade>()));
    gh.factory<_i28.ChatWatcherCubit>(
        () => _i28.ChatWatcherCubit(gh<_i9.IChatFacade>()));
    gh.lazySingleton<_i29.IThemeSwitcherFacade>(
        () => _i30.ThemeSwitcherFacade(gh<_i20.SharedPreferences>()));
    gh.factory<_i31.ThemeSwitcherCubit>(
        () => _i31.ThemeSwitcherCubit(gh<_i29.IThemeSwitcherFacade>()));
    return this;
  }
}

class _$AppInjectableProdModule extends _i32.AppInjectableProdModule {}
