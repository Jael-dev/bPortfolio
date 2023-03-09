import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_bonas/src/services/helpers/on_hover.dart';

class NavBarBuilderDesk extends ConsumerStatefulWidget {
  const NavBarBuilderDesk(this.router, this.context, this.tabs, {super.key});
  final TabsRouter router;
  final BuildContext context;
  final TabBar tabs;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NavBarBuilderDeskState();
}

class _NavBarBuilderDeskState extends ConsumerState<NavBarBuilderDesk>  {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: widget.tabs.preferredSize,
        child: SizedBox(
          child: widget.tabs,
        ),
      ),
    );
  }
}