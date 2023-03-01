// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat/application/auth/auth_bloc.dart' as _i27;
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart'
    as _i16;
import 'package:chat/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i22;
import 'package:chat/application/auth/sign_up_form/sign_up_form_bloc.dart'
    as _i23;
import 'package:chat/application/chat/chat_form_bloc/chat_form_bloc.dart'
    as _i28;
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart'
    as _i29;
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart'
    as _i32;
import 'package:chat/application/projects/project_actor/project_actor_cubit.dart'
    as _i17;
import 'package:chat/application/projects/project_filter/project_filter_bloc.dart'
    as _i18;
import 'package:chat/application/projects/project_form/project_form_bloc.dart'
    as _i19;
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart'
    as _i20;
import 'package:chat/application/projects/tasks/task_actor/task_actor_cubit.dart'
    as _i24;
import 'package:chat/application/projects/tasks/task_form/task_form_bloc.dart'
    as _i25;
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart'
    as _i26;
import 'package:chat/domain/auth/i_auth_facade.dart' as _i8;
import 'package:chat/domain/chat/i_chat_facade.dart' as _i10;
import 'package:chat/domain/core/theme_switcher/i_theme_switcher_facade.dart'
    as _i30;
import 'package:chat/domain/projects/i_project_repository.dart' as _i12;
import 'package:chat/domain/users/i_user_repository.dart' as _i14;
import 'package:chat/infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'package:chat/infrastructure/chat/chat_facade.dart' as _i11;
import 'package:chat/infrastructure/core/app_injectable_module.dart' as _i33;
import 'package:chat/infrastructure/core/theme_switcher/theme_switcher_facade.dart'
    as _i31;
import 'package:chat/infrastructure/projects/project_repository.dart' as _i13;
import 'package:chat/infrastructure/users/user_repository.dart' as _i15;
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
    gh.lazySingleton<_i6.FirebaseMessaging>(
        () => appInjectableProdModule.firebasMessaging);
    gh.lazySingleton<_i7.FlutterSecureStorage>(
        () => appInjectableProdModule.storage);
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.FirebaseMessaging>(),
        ));
    gh.lazySingleton<_i10.IChatFacade>(() => _i11.ChatFacade(
          gh<_i5.FirebaseFirestore>(),
          gh<_i8.IAuthFacade>(),
        ));
    gh.lazySingleton<_i12.IProjectRepository>(() => _i13.ProjectRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<_i8.IAuthFacade>(),
        ));
    gh.lazySingleton<_i14.IUserRepository>(() => _i15.UserRepository(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.factory<_i16.ProfileWatcherCubit>(
        () => _i16.ProfileWatcherCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i17.ProjectActorCubit>(
        () => _i17.ProjectActorCubit(gh<_i12.IProjectRepository>()));
    gh.factory<_i18.ProjectFilterBloc>(() => _i18.ProjectFilterBloc());
    gh.factory<_i19.ProjectFormBloc>(
        () => _i19.ProjectFormBloc(gh<_i12.IProjectRepository>()));
    gh.factory<_i20.ProjectWatcherBloc>(
        () => _i20.ProjectWatcherBloc(gh<_i12.IProjectRepository>()));
    await gh.factoryAsync<_i21.SharedPreferences>(
      () => appInjectableProdModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i22.SignInFormBloc>(
        () => _i22.SignInFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i23.SignUpFormBloc>(
        () => _i23.SignUpFormBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i24.TaskActorCubit>(
        () => _i24.TaskActorCubit(gh<_i12.IProjectRepository>()));
    gh.factory<_i25.TaskFormBloc>(
        () => _i25.TaskFormBloc(gh<_i12.IProjectRepository>()));
    gh.factory<_i26.UserWatcherBloc>(
        () => _i26.UserWatcherBloc(gh<_i14.IUserRepository>()));
    gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(gh<_i8.IAuthFacade>()));
    gh.factory<_i28.ChatFormBloc>(
        () => _i28.ChatFormBloc(gh<_i10.IChatFacade>()));
    gh.factory<_i29.ChatWatcherCubit>(
        () => _i29.ChatWatcherCubit(gh<_i10.IChatFacade>()));
    gh.lazySingleton<_i30.IThemeSwitcherFacade>(
        () => _i31.ThemeSwitcherFacade(gh<_i21.SharedPreferences>()));
    gh.factory<_i32.ThemeSwitcherCubit>(
        () => _i32.ThemeSwitcherCubit(gh<_i30.IThemeSwitcherFacade>()));
    return this;
  }
}

class _$AppInjectableProdModule extends _i33.AppInjectableProdModule {}
