import 'package:auto_route/auto_route.dart';
import 'package:portfolio_bonas/src/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_bonas/src/services/helpers/on_hover.dart';
import 'package:portfolio_bonas/src/widgets/app_bar.dart/desktop.dart';

final key = GlobalKey<ScaffoldState>();
 final tabs = TabBar(tabs: <OnHover> [
    OnHover(builder: (isHovered){
      final color = isHovered ? Colors.orange: Colors.white;
      return Container(
        color: Colors.transparent,
        child: Text("Home", style: TextStyle(color: color),),
      );
    }),
    OnHover(builder: (isHovered){
      final color = isHovered ? Colors.orange: Colors.white;
      return Container(
        color: Colors.transparent,
        child: Text("About", style: TextStyle(color: color),),
      );
    }),
    OnHover(builder: (isHovered){
      final color = isHovered ? Colors.orange: Colors.white;
      return Container(
        color: Colors.transparent,
        child: Text("Portfolio", style: TextStyle(color: color),),
      );
    }),
    OnHover(builder: (isHovered){
      final color = isHovered ? Colors.orange: Colors.white;
      return Container(
        color: Colors.transparent,
        child: Text("Contact", style: TextStyle(color: color),),
      );
    }),
    OnHover(builder: (isHovered){
      final color = isHovered ? Colors.orange: Colors.white;
      return Container(
        color: Colors.transparent,
        child: Text("Blog", style: TextStyle(color: color),),
      );
    }),
  ]);
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
      routes: const [DashBoard()],
      builder: (context, child, animation)=> Container(
        child: child,
      ),
      appBarBuilder: (context, tabsRouter){
        return PreferredSize(preferredSize: tabs.preferredSize, child: NavBarBuilderDesk(tabsRouter,context, tabs));
      },
    );
  }
}

