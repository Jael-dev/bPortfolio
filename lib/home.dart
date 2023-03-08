import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final key = GlobalKey<ScaffoldState>();

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      scaffoldKey: key,
      routes: const [],
      builder: (context, child, animation)=> Container(
        child: child,
      ),
      appBarBuilder: (context, tabsRouter){
        return NavbarBuilder(context: context, router: tabsRouter);
      },
    );
  }
}

