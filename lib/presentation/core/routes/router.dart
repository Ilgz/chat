import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:chat/domain/projects/project.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/presentation/chat/chat_page.dart';
import 'package:chat/presentation/chat/chats_overview_page.dart';
import 'package:chat/presentation/core/constants.dart';
import 'package:chat/presentation/core/widgets/scaffold_with_bottom.dart';
import 'package:chat/presentation/profile/profile_page.dart';
import 'package:chat/presentation/sign_in/sign_in_page.dart';
import 'package:chat/presentation/sign_in/sign_up_page.dart';
import 'package:chat/presentation/splash/splash_page.dart';
import 'package:chat/presentation/users/members_overview/members_page.dart';
import 'package:chat/presentation/users/users_overview/users_overview_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final goRouter =
    GoRouter(navigatorKey: _rootNavigatorKey, initialLocation: '/', routes: [
  ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
            redirect: (context, state) {
              if (state.extra == null) {
                return PageRoutes.chatsOverviewPage;
              }
              return null;
            },
          path: PageRoutes.chatsOverviewPage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ChatsOverviewPage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: PageRoutes.chatPage,
              pageBuilder: (context, state) =>  NoTransitionPage(
                child: ChatPage(initialProject: state.extra as Project,),
              ),
            ),
          ]
        ),
        GoRoute(
          path: PageRoutes.profilePage,
          pageBuilder: (context, state) => const NoTransitionPage(
            child: ProfilePage(),
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

void goToSignInPage(BuildContext context) =>
    context.pushReplacement(PageRoutes.signInPage,);
void goToChatsOverviewPage(BuildContext context) =>
    context.pushReplacement(PageRoutes.chatsOverviewPage);
void goToChatPage(BuildContext context,Project project) =>
    context.push("${PageRoutes.chatsOverviewPage}/${PageRoutes.chatPage}",extra: project);
void goToSignUpPage(BuildContext context) =>
    context.pushReplacement(PageRoutes.signUpPage);
