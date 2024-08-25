import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/login/login_screen.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/register/register_screen.dart';
import 'package:newsup_app/presentation/pages/explore/explore_screen.dart';
import 'package:newsup_app/presentation/pages/home/home_screen.dart';
import 'package:newsup_app/presentation/pages/list/list_screen.dart';
import 'package:newsup_app/presentation/pages/onboarding/onboarding_screen.dart';
import 'package:newsup_app/presentation/pages/profile/profile_screen.dart';
import 'package:newsup_app/presentation/pages/splash/splash_screen.dart';
import 'package:newsup_app/utils/constants/route_constants.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
          name: RouteConstants.home,
          path: '/home',
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: HomeScreen(),
            );
          }),
      GoRoute(
          path: '/login',
          name: RouteConstants.login,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: LoginScreen(),
            );
          }),
      GoRoute(
          builder: (context, state) => const SplashScreen(),
          path: '/splash',
          name: RouteConstants.splash,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: SplashScreen(),
            );
          }),
      GoRoute(
          path: '/onboarding',
          name: RouteConstants.onboarding,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: OnboardingScreen(),
            );
          }),
      GoRoute(
          path: '/register',
          name: RouteConstants.register,
          pageBuilder: (context, state) {
            return const MaterialPage(
              child: RegisterScreen(),
            );
          }),
        GoRoute(
            path: '/explore',
            name: RouteConstants.explore,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ExploreScreen(),
              );
            }),
        GoRoute(
            path: '/list',
            name: RouteConstants.list,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ListScreen(),
              );
            }),
        GoRoute(
            path: '/profile',
            name: RouteConstants.profile,
            pageBuilder: (context, state) {
              return const MaterialPage(
                child: ProfileScreen(),
              );
            }),
      //   GoRoute(
      //       path: '/library',
      //       name: RouteConstants.library,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: LibraryPage(),
      //         );
      //       }),
      //   GoRoute(
      //       path: '/chat',
      //       name: RouteConstants.chat,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: ChatPage(),
      //         );
      //       }),
      //   GoRoute(
      //       path: '/edit',
      //       name: RouteConstants.editPage,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: EditProfilePage(),
      //         );
      //       }),
      //   GoRoute(
      //       path: '/privacy',
      //       name: RouteConstants.privacyPage,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: PrivacyPage(),
      //         );
      //       }),
      //   GoRoute(
      //       path: '/liked',
      //       name: RouteConstants.likedPage,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: LikedMusicPage(),
      //         );
      //       }),
      //       GoRoute(
      //       path: '/public',
      //       name: RouteConstants.publicProfilePage,
      //       pageBuilder: (context, state) {
      //         return const MaterialPage(
      //           child: PublicProfilePage(),
      //         );
      //       }),
    ],
    redirect: (context, state) async {
      bool isAuthenticated = false;
      if (!isAuthenticated && state.matchedLocation == '/') {
        return state.namedLocation(RouteConstants.splash);
      }
      return null;
    });
