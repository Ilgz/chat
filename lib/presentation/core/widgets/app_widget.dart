import 'package:chat/application/auth/auth_bloc.dart';
import 'package:chat/application/auth/profile_actor/profile_actor_cubit.dart';
import 'package:chat/application/auth/profile_watcher/profile_watcher_cubit.dart';
import 'package:chat/application/chat/chat_actor_bloc/chat_actor_cubit.dart';
import 'package:chat/application/chat/chat_combiner_bloc/chat_combiner_cubit.dart';
import 'package:chat/application/chat/chat_searcher_bloc/chat_searcher_cubit.dart';
import 'package:chat/application/chat/chat_watcher_bloc/chat_watcher_cubit.dart';
import 'package:chat/application/core/locale_switcher/locale_switcher_cubit.dart';
import 'package:chat/application/core/theme_switcher/theme_switcher_cubit.dart';
import 'package:chat/application/projects/project_filter/project_filter_bloc.dart';
import 'package:chat/application/projects/project_watcher/project_watcher_bloc.dart';
import 'package:chat/application/users/user_watcher/user_watcher_bloc.dart';
import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/injection.dart';
import 'package:chat/presentation/core/constants.dart';
import 'package:chat/presentation/core/theme.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  getIt<ThemeSwitcherCubit>()..initializeTheme()),
          BlocProvider(
              create: (context) =>
                  getIt<LocaleSwitcherCubit>()..initializeLocale()),
          BlocProvider(create: (context) => getIt<ProfileActorCubit>()),
          BlocProvider(
            create: (context) => getIt<ProjectWatcherBloc>()
              ..add(const ProjectWatcherEvent.startWatchAll()),
          ),
          BlocProvider(
            create: (context) => getIt<ChatWatcherCubit>()..startWatchAll(),
          ),
          BlocProvider(
            create: (context) => getIt<UserWatcherBloc>()
              ..add(
                const UserWatcherEvent.startWatchAll(),
              ),
          ),
          BlocProvider(create: (context) => getIt<ProjectFilterBloc>()),
          BlocProvider(
              create: (context) =>
                  getIt<ProfileWatcherCubit>()..getSignedInUser()),
          BlocProvider(create: (context) => getIt<ChatSearcherCubit>()),
          BlocProvider(
              create: (context) =>
                  getIt<ChatActorCubit>()..handleInitialNotification()),
          BlocProvider(
            create: (context) => getIt<ChatCombinerCubit>()..watchSearchChats(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
          )
        ],
        child: Builder(builder: (context) {
          if (!kIsWeb) {
            FirebaseMessaging.onMessage.listen((_) {
              print("onMessage");
            });
            FirebaseMessaging.onMessageOpenedApp
                .listen((RemoteMessage message) {
              print("openedNotification");
              context.read<ChatActorCubit>().handleInitialNotification();
            });
          }
          return BlocBuilder<ThemeSwitcherCubit, ThemeSwitcherState>(
            buildWhen: (p, c) => p.isDark != c.isDark,
            builder: (context, state) {
              return BlocBuilder<LocaleSwitcherCubit, LocaleSwitcherState>(
                builder: (context, localeSwitcherState) {
                  if (localeSwitcherState.flutterLocalization != null) {
                    return AnnotatedRegion<SystemUiOverlayStyle>(
                      value: SystemUiOverlayStyle(
                        statusBarColor: state.isDark
                            ? AppColorConstants.darkPrimaryColor
                            : AppColorConstants
                                .lightPrimaryColor, // set your desired status bar color here
                      ),
                      child: Builder(builder: (context) {
                        return BlocListener<ChatActorCubit, ChatActorState>(
                          listener: (context, state) {
                            state.maybeMap(
                                shouldNavigateToChat: (state) {
                                  print("goTO");
                                  final chat=right<Project,Chat>(state.chat);
                                  getIt<GoRouter>().push(
                                      "${PageRoutes.chatsOverviewPage}/${PageRoutes.chatPage}",
                                      extra: chat);
                                },
                                orElse: () {});
                          },
                          child: MaterialApp.router(
                              supportedLocales: localeSwitcherState
                                  .flutterLocalization!.supportedLocales,
                              localizationsDelegates: localeSwitcherState
                                  .flutterLocalization!.localizationsDelegates,
                              routerConfig: getIt<GoRouter>(),
                              title: "Chat",
                              debugShowCheckedModeBanner: false,
                              themeMode: state.isDark
                                  ? ThemeMode.dark
                                  : ThemeMode.light,
                              darkTheme: darkTheme,
                              theme: lightTheme),
                        );
                      }),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              );
            },
          );
        }));
  }
}
