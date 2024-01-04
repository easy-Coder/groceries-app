import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/common/button/animate_button.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {super.key, required this.icon, required this.onPressed, this.color});

  final Icon icon;
  final VoidCallback onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimateButton(
      onPressed: onPressed,
      isLoading: false,
      child: Container(
        width: 44.w,
        height: 44.w,
        decoration: ShapeDecoration(
          shape: OvalBorder(
            side: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 1.w,
            ),
          ),
          color: color ?? Theme.of(context).colorScheme.background,
        ),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
