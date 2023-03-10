import 'package:auto_route/auto_route.dart';

import '../../home.dart';
import '../screens/Home/home.dart';
import '../screens/welcome.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute( page: Home,children: [
      AutoRoute(page: DashBoard)
    ]),
     AutoRoute(page: Welcome, initial: true, path: "welcome"),
  ]
)

class $AppRouter {}