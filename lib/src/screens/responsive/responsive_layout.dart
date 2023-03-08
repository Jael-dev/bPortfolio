import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ? This is the file the manages the responsive display of items on the screens.
// Todo: If you want add the tablet view...... With time. 
class ResponsiveLayout extends ConsumerWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveLayout(this.mobileBody, this.desktopBody, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
