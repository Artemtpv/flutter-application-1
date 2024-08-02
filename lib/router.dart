import 'package:flutter_application_1/bottom_navigator/bottom_navigator.dart';
import 'package:flutter_application_1/makets/makets.dart';
import 'package:flutter_application_1/map/map.dart';
import 'package:flutter_application_1/notifications/notifications.dart';
import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/profile/profile_settings.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const BottomNavigator(),
    ),
    GoRoute(
      path: "/map",
      builder: (context, state) => const MyMap(),
    ),
    GoRoute(
      path: "/makets",
      builder: (context, state) => const MyMakets(),
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const ProfileSettings(),
    ),
    GoRoute(
      path: "/notifications",
      builder: (context, state) => const MyNotifications(),
    ),
  ],
);
