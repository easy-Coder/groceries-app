import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/common/button/animate_button.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;

  final bool isLoading;

  final String text;
  final double? width;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      this.isLoading = false,
      required this.text,
      this.width});

  @override
  Widget build(BuildContext context) {
    return AnimateButton(
      onPressed: onPressed,
      isLoading: isLoading,
      child: Container(
        height: 53.h,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
