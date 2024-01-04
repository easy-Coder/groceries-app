import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries_app/gen/assets.gen.dart';
import 'package:groceries_app/src/common/annotate_scaffold.dart';
import 'package:groceries_app/src/common/button/primary_button.dart';
import 'package:groceries_app/src/router/app_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AnnotatedScaffold(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Assets.image.avocado1.image(
                        fit: BoxFit.fill,
                        width: 390.w,
                        height: 338.h,
                        colorBlendMode: BlendMode.multiply),
                  ),
                  Positioned(
                    top: 31.h,
                    right: 26.27.w,
                    child: Assets.image.leaf1.image(),
                  ),
                  Positioned(
                    left: 36.w,
                    bottom: 315.67.h,
                    child: Assets.image.leaf2.image(),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 406.32.h,
                    child: Assets.image.leaf3.image(),
                  ),
                  Positioned(
                    right: 233.w,
                    top: -85.h,
                    child: Container(
                      width: 276.w,
                      height: 276.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 176,
                              spreadRadius: 2,
                              color: Color(0x1C23AA49))
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -56.w,
                    top: 83.h,
                    child: Container(
                      width: 276.w,
                      height: 276.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 176,
                              spreadRadius: 2,
                              color: Color(0x1C23AA49))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SafeArea(
              child: SizedBox(
                width: size.width,
                height: size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.logo.logo.image(
                        width: 66.w,
                        height: 66.w,
                      ),
                      32.verticalSpace,
                      Text(
                        'Get your groceries delivered to your home',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      24.verticalSpace,
                      Text(
                        'The best delivery app in town for delivering your daily fresh groceries',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      40.verticalSpace,
                      PrimaryButton(
                          onPressed: () =>
                              context.pushNamed(AppRouter.auth.name),
                          text: "Shop now",
                          width: 190.w)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
