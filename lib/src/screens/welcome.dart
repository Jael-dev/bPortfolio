import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Welcome extends ConsumerStatefulWidget {
  const Welcome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WelcomeState();
}

class _WelcomeState extends ConsumerState<Welcome> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Welcom"),
    );
  }
}