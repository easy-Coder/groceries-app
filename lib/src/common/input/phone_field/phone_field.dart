import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/theme/color.dart';
import 'package:groceries_app/src/theme/spacing.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  final MaskTextInputFormatter formatter = MaskTextInputFormatter.eager(
    mask: "(###) ###-##-##",
    filter: {"#": RegExp(r'[0-9]')},
  );

  InputDecoration getDecorator() {
    return Theme.of(context).brightness == Brightness.light
        ? InputDecoration(
            isCollapsed: true,
            filled: false,
            hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.lightFontGreyColor,
                ),
            hintText: "(000) 000-00-000",
            border: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            focusedBorder: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            focusColor: AppColors.white,
            enabledBorder: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            counterText: '',
          )
        : InputDecoration(
            isCollapsed: true,
            filled: false,
            hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: AppColors.darkFontGreyColor,
                ),
            hintText: "(000) 000-00-00",
            border: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            focusedBorder: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            focusColor: AppColors.white,
            enabledBorder: AppSpacings.outLineBorder.copyWith(
              borderSide: BorderSide.none,
            ),
            counterText: '',
          );
  }

  @override
  Widget build(BuildContext context) {
    // return AutofillGroup(
    //   child: PhoneFormField(
    //     controller: controller,
    //     showCursor: false,
    //     showFlagInInput: false,
    //     keyboardType: TextInputType.none,
    //     countryCodeStyle: Theme.of(context).textTheme.displaySmall,
    //     defaultCountry: IsoCode.GB,
    //     style: Theme.of(context).textTheme.displaySmall,
    //     decoration: getDecorator(context),
    //     autofillHints: const [AutofillHints.telephoneNumber],
    //   ),
    // );
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildCountryChip(),
        Expanded(
          child: AutofillGroup(
            child: TextField(
              keyboardType: TextInputType.none,
              controller: widget.controller,
              decoration: getDecorator(),
              showCursor: false,
              style: Theme.of(context).textTheme.displaySmall,
              maxLength: 11,
              inputFormatters: [formatter],
              autofillHints: const [AutofillHints.telephoneNumber],
            ),
          ),
        ),
      ],
    );
  }

  _buildCountryChip() {
    return GestureDetector(
      onTap: () => null,
      child: Text(
        '+44',
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
