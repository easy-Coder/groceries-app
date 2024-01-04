import 'package:flutter/material.dart';

class AnimateButton extends StatefulWidget {
  const AnimateButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.isLoading = false,
  });

  final VoidCallback onPressed;

  final Widget child;
  final bool isLoading;

  @override
  State<AnimateButton> createState() => _AnimateButtonState();
}

class _AnimateButtonState extends State<AnimateButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 500),
      reverseDuration: const Duration(microseconds: 500),
    );
    final curveAnim =
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    scaleAnimation = Tween<double>(begin: 0, end: 0.06).animate(curveAnim);
    // TODO: make sure onPressed work with accessibility
    controller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        widget.onPressed();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   if (controller.status == AnimationStatus.dismissed) {

      //     if (!widget.isLoading) {
      //       widget.onPressed();
      //     }
      //   }
      // },
      behavior: HitTestBehavior.opaque,
      onTapUp: (details) {
        debugPrint("Tap Up");
        controller.reverse();
      },
      onTapDown: (details) {
        debugPrint("Tap Down");
        controller.forward();
      },
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform.scale(
            scale: 1 - scaleAnimation.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
