import 'package:flutter/material.dart';

/// This is used to manage the hovering effect of the appBar.
class OnHover extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const OnHover({Key? key, required this.builder}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _OnHoverState createState() => _OnHoverState();
}
class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hovered = Matrix4.identity()..translate(3,2,0.002);
    final transform = isHovered ? hovered : Matrix4.identity();
    return MouseRegion(
      onEnter: (_)=> onEntered(true),
      onExit: (_)=> onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: widget.builder(isHovered),
      ),
    );
  }
  void onEntered(bool isHovered){
    setState(() {
      this.isHovered = isHovered;
    });
  }
}