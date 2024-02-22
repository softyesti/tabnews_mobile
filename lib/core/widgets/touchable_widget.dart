import 'package:flutter/material.dart';

class TouchableWidget extends StatefulWidget {
  const TouchableWidget({
    required this.child,
    this.onPressed,
    super.key,
  });

  final Widget child;
  final void Function()? onPressed;

  @override
  State<StatefulWidget> createState() => _TouchableWidgetState();
}

class _TouchableWidgetState extends State<TouchableWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: widget.child,
    );
  }
}
