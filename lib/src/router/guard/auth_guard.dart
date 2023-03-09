import 'package:auto_route/auto_route.dart';
import 'package:portfolio_bonas/src/router/router.gr.dart';

import '../../services/hive/local_user.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isAuthenticated =
        AccountBox.getUserId() != "" && AccountBox.getUserEmail() != "";
    if (isAuthenticated == false) {
      router.replaceAll([const Home()]);
    } else {
      resolver.next(true);
    }
  }
}