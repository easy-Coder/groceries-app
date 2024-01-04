import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries_app/gen/assets.gen.dart';
import 'package:groceries_app/src/common/annotate_scaffold.dart';
import 'package:groceries_app/src/common/button/outline_button.dart';
import 'package:groceries_app/src/common/button/primary_button.dart';
import 'package:groceries_app/src/common/input/phone_field/phone_field.dart';
import 'package:groceries_app/src/common/input/number_input_card.dart';
import 'package:groceries_app/src/router/app_router.dart';
import 'package:phone_form_field/phone_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedScaffold(
      child: Scaffold(
          body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            Row(
              children: [
                OutlineButton(
                  onPressed: () => context.pop(),
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 11.h,
                bottom: 56.h,
              ),
              child: Column(
                children: [
                  Assets.logo.logo.image(
                    width: 66.w,
                    height: 66.w,
                  ),
                  16.verticalSpace,
                  Text(
                    'Enter your mobile number',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  16.verticalSpace,
                  Text(
                    "We will send you a verification code",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  16.verticalSpace,
                  PhoneField(controller: controller),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  PrimaryButton(
                    onPressed: () {
                      context.pushReplacementNamed(AppRouter.home.name);
                    },
                    text: "Continue",
                  ),
                  24.verticalSpace,
                  Text.rich(
                    TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 16),
                      children: [
                        const TextSpan(
                          text:
                              "By clicking on “Continue” you are agreeing to our ",
                        ),
                        TextSpan(
                          text: "terms of use",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: const Color(0xff5D5FEF),
                                    decoration: TextDecoration.underline,
                                    fontSize: 16,
                                  ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            24.verticalSpace,
            NumberInputCard(
              onChanged: (value) {
                setState(() {
                  controller.text = value;
                });
              },
              value: controller.text,
            ),
            16.verticalSpace,
          ],
        ),
      )),
    );
  }
}
