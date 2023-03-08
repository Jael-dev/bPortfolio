import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavBarBuilderDesk extends ConsumerWidget {
  const NavBarBuilderDesk(this.router, this.context, {super.key});
  final TabsRouter router;
  final BuildContext context;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    );
  }
}