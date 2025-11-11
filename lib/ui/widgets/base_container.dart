import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key, 
    this.width, 
    this.padding = const EdgeInsets.only(left: 16), 
    this.margin, 
    required this.child
  });

  final double? width;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.cardColor
      ),
      child: child,
    );
  }
}