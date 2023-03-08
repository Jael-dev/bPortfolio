import 'package:auto_route/auto_route.dart';

import '../../services/hive/local_user.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isAuthenticated =
        AccountBox.getUserId() != "" && AccountBox.getUserEmail() != "";
    if (isAuthenticated == false) {
      // Todo: Navigate to home page.....
    } else {
      resolver.next(true);
    }
  }
}