import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_bonas/src/router/guard/auth_guard.dart';
import 'package:portfolio_bonas/src/settings/settings_controller.dart';

class BonasPortfolio extends ConsumerStatefulWidget {
  const BonasPortfolio(this.settingsController, {super.key});
  final SettingsController settingsController;


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BonasPortfolioState();
}

class _BonasPortfolioState extends ConsumerState<BonasPortfolio> {
  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.settingsController, 
      builder: (BuildContext context, Widget? child){
        return MaterialApp.router(
          restorationScopeId: 'app',
          debugShowCheckedModeBanner: false,
        );
      });
  }
}