import 'package:auto_route/auto_route.dart';

import '../../home.dart';
import '../screens/Home/home.dart';
import '../screens/welcome.dart';
import 'guard/auth_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute( page: Home, initial: true,guards: [
      AuthGuard
    ],children: [
      AutoRoute(page: DashBoard)
    ]),
     AutoRoute(page: Welcome, path: "welcome"),
  ]
)

class $AppRouter {}