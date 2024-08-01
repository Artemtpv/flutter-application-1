import 'package:flutter/material.dart';

import 'package:flutter_application_1/home/home.dart';
import 'package:flutter_application_1/login_to_app/sucsess_login.dart';
import 'package:flutter_application_1/login_to_app/verification_passed.dart';

import 'package:flutter_application_1/makets/makets.dart';
import 'package:flutter_application_1/map/map.dart';
import 'package:flutter_application_1/notifications/notifications.dart';
import 'package:flutter_application_1/profile/change_password.dart';
import 'package:flutter_application_1/profile/delete_account.dart';

import 'package:flutter_application_1/profile/profile.dart';
import 'package:flutter_application_1/profile/profile_screen.dart';
import 'package:flutter_application_1/profile/profile_settings.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const MyHome(),
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: "/makets",
      builder: (context, state) => const MyMakets(),
    ),
    GoRoute(
      path: "/settings",
      builder: (context, state) => const ProfileSettings(),
    ),
    GoRoute(
      path: "/map",
      builder: (context, state) => const MyMap(),
    ),
    GoRoute(
      path: "/notifications",
      builder: (context, state) => const MyNotifications(),
    ),
  ],
);
