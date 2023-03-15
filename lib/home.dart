import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_bonas/src/extensions/screens.dart';
import 'package:portfolio_bonas/src/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_bonas/src/services/helpers/on_hover.dart';
import 'package:portfolio_bonas/src/widgets/app_bar.dart/desktop.dart';
import 'package:video_player/video_player.dart';

final key = GlobalKey<ScaffoldState>();
final tabs = TabBar(tabs: <OnHover>[
  OnHover(builder: (isHovered) {
    final color = isHovered ? Colors.orange : Colors.black;
    return Container(
      color: Colors.transparent,
      child: Text(
        "Home",
        style: TextStyle(color: color),
      ),
    );
  }),
  OnHover(builder: (isHovered) {
    final color = isHovered ? Colors.orange : Colors.black;
    return Container(
      color: Colors.transparent,
      child: Text(
        "About",
        style: TextStyle(color: color),
      ),
    );
  }),
  OnHover(builder: (isHovered) {
    final color = isHovered ? Colors.orange : Colors.black;
    return Container(
      color: Colors.transparent,
      child: Text(
        "Portfolio",
        style: TextStyle(color: color),
      ),
    );
  }),
  OnHover(builder: (isHovered) {
    final color = isHovered ? Colors.orange : Colors.black;
    return Container(
      color: Colors.transparent,
      child: Text(
        "Contact",
        style: TextStyle(color: color),
      ),
    );
  }),
  OnHover(builder: (isHovered) {
    final color = isHovered ? Colors.orange : Colors.black;
    return Container(
      color: Colors.transparent,
      child: Text(
        "Blog",
        style: TextStyle(color: color),
      ),
    );
  }),
]);

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  // Variables
  late CarouselController carouselController;
  late VideoPlayerController _controller;
  int activeIndex = 0;

  @override
  void initState() {
    carouselController = CarouselController();
    _controller = VideoPlayerController.asset("man.mp4");
    _controller.setVolume(0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider(
          items: [
            "assets/images/ui.jpeg",
            "assets/images/developer.jpeg",
            "assets/videos/man.mp4"
          ].map((e) {
            return Builder(builder: (BuildContext context) {
              return Container(
                child: e.contains("videos")
                    ? VideoPlayer(_controller)
                    : Image.asset(
                        e,
                        fit: BoxFit.cover,
                      ),
              );
            });
          }).toList(),
          options: CarouselOptions(
              initialPage: 0,
              viewportFraction: 1,
              height: context.screenHeight,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() => activeIndex = index);
              })),
      // AutoTabsScaffold(
      //   backgroundColor: Colors.transparent,
      //   scaffoldKey: key,
      //   routes: const [DashBoard()],
      //   builder: (context, child, animation) => Container(
      //     child: child,
      //   ),
      //   appBarBuilder: (context, tabsRouter) {
      //     return PreferredSize(
      //         preferredSize: tabs.preferredSize,
      //         child: NavBarBuilderDesk(tabsRouter, context, tabs));
      //   },
      // ),
    ]);
  }
}
