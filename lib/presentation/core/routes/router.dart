import 'package:chat/domain/chat/chat.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/presentation/chat/chat_page.dart';
import 'package:chat/presentation/chat/chat_search_page.dart';
import 'package:chat/presentation/chat/chats_overview_page.dart';
import 'package:chat/presentation/core/constants.dart';
import 'package:chat/presentation/profile/profile_page.dart';
import 'package:chat/presentation/sign_in/sign_in_page.dart';
import 'package:chat/presentation/sign_in/sign_up_page.dart';
import 'package:chat/presentation/splash/splash_page.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final goRouter =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/', routes: [
  GoRoute(
      path: PageRoutes.chatsOverviewPage,
      pageBuilder: (context, state) => const NoTransitionPage(
            child: ChatsOverviewPage(),
          ),
      routes: [
        GoRoute(
          path: PageRoutes.profilePage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfilePage(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: PageRoutes.chatSearchPage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ChatSearchPage(),
          ),
        ),
        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: PageRoutes.chatPage,
          redirect: (context, state) {
            if (state.extra == null) {
              return PageRoutes.chatsOverviewPage;
            }
            return null;
          },
          pageBuilder: (context, state) => NoTransitionPage(
            child: ChatPage(
              projectOrChat: state.extra as Either<Project, Chat>,
            ),
          ),
        ),
      ]),
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => const NoTransitionPage(
      child: SplashPage(),
    ),
  ),
  GoRoute(
    path: PageRoutes.signInPage,
    pageBuilder: (context, state) => const NoTransitionPage(
      child: SignInPage(),
    ),
  ),
  GoRoute(
    path: PageRoutes.signUpPage,
    pageBuilder: (context, state) => const NoTransitionPage(
      child: SignUpPage(),
    ),
  ),
]);

void goToSignInPage(BuildContext context) => context.pushReplacement(
      PageRoutes.signInPage,
    );
void goToChatsOverviewPage(BuildContext context) =>
    context.pushReplacement(PageRoutes.chatsOverviewPage);
void goToChatSearchPage(BuildContext context) =>
    context.push("${PageRoutes.chatsOverviewPage}/${PageRoutes.chatSearchPage}",
        );
void goToProfilePage(BuildContext context) =>
    context.push("${PageRoutes.chatsOverviewPage}/${PageRoutes.profilePage}",
        );

void goToChatPage(BuildContext context, Either<Project, Chat> projectOrChat) =>
    context.push("${PageRoutes.chatsOverviewPage}/${PageRoutes.chatPage}",
        extra: projectOrChat);
void goToSignUpPage(BuildContext context) =>
    context.pushReplacement(PageRoutes.signUpPage);
