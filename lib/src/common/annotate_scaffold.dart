import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnotatedScaffold extends StatelessWidget {
  final Widget child;

  const AnnotatedScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness),
      child: child,
    );
  }
}
