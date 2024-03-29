// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chat/application/auth/auth_bloc.dart' as _i30;
import 'package:chat/application/auth/profile_actor/profile_actor_cubit.dart'
    as _i18;
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart'
    as _i19;
import 'package:chat/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i25;
import 'package:chat/application/auth/sign_up_form/sign_up_form_bloc.dart'
    as _i26;
import 'package:chat/application/chat/chat_actor_bloc/chat_actor_cubit.dart'
    as _i38;
import 'package:chat/application/chat/chat_combiner_bloc/chat_combiner_cubit.dart'
    as _i39;
import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart'
    as _i3;
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart'
    as _i31;
import 'package:chat/application/core/locale_switcher/locale_switcher_cubit.dart'
    as _i36;
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart'
    as _i37;
import 'package:chat/application/projects/project_actor/project_actor_cubit.dart'
    as _i20;
import 'package:chat/application/projects/project_filter/project_filter_bloc.dart'
    as _i21;
import 'package:chat/application/projects/project_form/project_form_bloc.dart'
    as _i22;
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart'
    as _i23;
import 'package:chat/application/projects/tasks/task_actor/task_actor_cubit.dart'
    as _i27;
import 'package:chat/application/projects/tasks/task_form/task_form_bloc.dart'
    as _i28;
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart'
    as _i29;
import 'package:chat/domain/auth/i_auth_facade.dart' as _i10;
import 'package:chat/domain/chat/i_chat_facade.dart' as _i12;
import 'package:chat/domain/core/locale_switcher/i_locale_switcher_facade.dart'
    as _i32;
import 'package:chat/domain/core/theme_switcher/i_theme_switcher_facade.dart'
    as _i34;
import 'package:chat/domain/projects/i_project_repository.dart' as _i14;
import 'package:chat/domain/users/i_user_repository.dart' as _i16;
import 'package:chat/infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'package:chat/infrastructure/chat/chat_facade.dart' as _i13;
import 'package:chat/infrastructure/core/app_injectable_module.dart' as _i40;
import 'package:chat/infrastructure/core/locale_switcher/locale_switcher_facade.dart'
    as _i33;
import 'package:chat/infrastructure/core/theme_switcher/theme_switcher_facade.dart'
    as _i35;
import 'package:chat/infrastructure/projects/project_repository.dart' as _i15;
import 'package:chat/infrastructure/users/user_repository.dart' as _i17;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_messaging/firebase_messaging.dart' as _i7;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i9;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i3.ChatSearcherCubit>(() => _i3.ChatSearcherCubit());
    gh.lazySingleton<_i4.Client>(() => appInjectableProdModule.httpClient);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => appInjectableProdModule.firebaseAuthDev);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => appInjectableProdModule.firebaseFirestoreDev);
    gh.lazySingleton<_i7.FirebaseMessaging>(
        () => appInjectableProdModule.firebaseMessaging);
    gh.lazySingleton<_i8.FlutterSecureStorage>(
        () => appInjectableProdModule.storage);
    gh.singleton<_i9.GoRouter>(appInjectableProdModule.goRouterSingleton);
    gh.lazySingleton<_i10.IAuthFacade>(() => _i11.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.FirebaseFirestore>(),
          gh<_i7.FirebaseMessaging>(),
        ));
    gh.lazySingleton<_i12.IChatFacade>(() => _i13.ChatFacade(
          gh<_i6.FirebaseFirestore>(),
          gh<_i10.IAuthFacade>(),
        ));
    gh.lazySingleton<_i14.IProjectRepository>(() => _i15.ProjectRepository(
          gh<_i6.FirebaseFirestore>(),
          gh<_i10.IAuthFacade>(),
        ));
    gh.lazySingleton<_i16.IUserRepository>(() => _i17.UserRepository(
          gh<_i6.FirebaseFirestore>(),
          gh<_i5.FirebaseAuth>(),
        ));
    gh.factory<_i18.ProfileActorCubit>(
        () => _i18.ProfileActorCubit(gh<_i10.IAuthFacade>()));
    gh.factory<_i19.ProfileWatcherCubit>(
        () => _i19.ProfileWatcherCubit(gh<_i10.IAuthFacade>()));
    gh.factory<_i20.ProjectActorCubit>(
        () => _i20.ProjectActorCubit(gh<_i14.IProjectRepository>()));
    gh.factory<_i21.ProjectFilterBloc>(() => _i21.ProjectFilterBloc());
    gh.factory<_i22.ProjectFormBloc>(
        () => _i22.ProjectFormBloc(gh<_i14.IProjectRepository>()));
    gh.factory<_i23.ProjectWatcherBloc>(
        () => _i23.ProjectWatcherBloc(gh<_i14.IProjectRepository>()));
    await gh.factoryAsync<_i24.SharedPreferences>(
      () => appInjectableProdModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i25.SignInFormBloc>(
        () => _i25.SignInFormBloc(gh<_i10.IAuthFacade>()));
    gh.factory<_i26.SignUpFormBloc>(
        () => _i26.SignUpFormBloc(gh<_i10.IAuthFacade>()));
    gh.factory<_i27.TaskActorCubit>(
        () => _i27.TaskActorCubit(gh<_i14.IProjectRepository>()));
    gh.factory<_i28.TaskFormBloc>(
        () => _i28.TaskFormBloc(gh<_i14.IProjectRepository>()));
    gh.lazySingleton<_i29.UserWatcherBloc>(
        () => _i29.UserWatcherBloc(gh<_i16.IUserRepository>()));
    gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(gh<_i10.IAuthFacade>()));
    gh.lazySingleton<_i31.ChatWatcherCubit>(
        () => _i31.ChatWatcherCubit(gh<_i12.IChatFacade>()));
    gh.lazySingleton<_i32.ILocaleSwitcherFacade>(
        () => _i33.LocaleSwitcherFacade(gh<_i24.SharedPreferences>()));
    gh.lazySingleton<_i34.IThemeSwitcherFacade>(
        () => _i35.ThemeSwitcherFacade(gh<_i24.SharedPreferences>()));
    gh.factory<_i36.LocaleSwitcherCubit>(
        () => _i36.LocaleSwitcherCubit(gh<_i32.ILocaleSwitcherFacade>()));
    gh.factory<_i37.ThemeSwitcherCubit>(
        () => _i37.ThemeSwitcherCubit(gh<_i34.IThemeSwitcherFacade>()));
    gh.factory<_i38.ChatActorCubit>(() => _i38.ChatActorCubit(
          gh<_i12.IChatFacade>(),
          gh<_i31.ChatWatcherCubit>(),
        ));
    gh.factory<_i39.ChatCombinerCubit>(() => _i39.ChatCombinerCubit(
          gh<_i31.ChatWatcherCubit>(),
          gh<_i29.UserWatcherBloc>(),
        ));
    return this;
  }
}

class _$AppInjectableProdModule extends _i40.AppInjectableProdModule {}
