// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../home.dart' as _i1;
import '../screens/Home/home.dart' as _i3;
import '../screens/welcome.dart' as _i2;
import 'guard/auth_guard.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter({
    _i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i6.AuthGuard authGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    Welcome.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.Welcome(),
      );
    },
    DashBoard.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DashBoard(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          Home.name,
          path: '/',
          guards: [authGuard],
          children: [
            _i4.RouteConfig(
              DashBoard.name,
              path: 'dash-board',
              parent: Home.name,
            )
          ],
        ),
        _i4.RouteConfig(
          Welcome.name,
          path: 'welcome',
        ),
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i4.PageRouteInfo<void> {
  const Home({List<_i4.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Welcome]
class Welcome extends _i4.PageRouteInfo<void> {
  const Welcome()
      : super(
          Welcome.name,
          path: 'welcome',
        );

  static const String name = 'Welcome';
}

/// generated route for
/// [_i3.DashBoard]
class DashBoard extends _i4.PageRouteInfo<void> {
  const DashBoard()
      : super(
          DashBoard.name,
          path: 'dash-board',
        );

  static const String name = 'DashBoard';
}
