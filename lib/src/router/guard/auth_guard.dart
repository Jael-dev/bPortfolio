import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    /// Note: Here I just resolve. This guard is compulsory as we are in the web 
    resolver.next(true);
  }
}