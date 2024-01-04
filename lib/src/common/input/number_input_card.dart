import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/src/common/button/animate_button.dart';

class NumberInputCard extends StatelessWidget {
  const NumberInputCard({
    super.key,
    required this.onChanged,
    required this.value,
  });

  final ValueChanged<String> onChanged;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: KeyPad(
                      number: 1,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 2,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 3,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: KeyPad(
                      number: 4,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 5,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 6,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(
                    child: KeyPad(
                      number: 7,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 8,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      number: 9,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                ],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Expanded(child: SizedBox(height: 50.h)),
                  Expanded(
                    child: KeyPad(
                      number: 0,
                      onPressed: (number) =>
                          onChanged(value + number!.toString()),
                    ),
                  ),
                  Expanded(
                    child: KeyPad(
                      icon: Icon(
                        Icons.backspace_outlined,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                      onPressed: (_) {
                        if (value.isNotEmpty) {
                          final newValue = value.split('')
                            ..removeAt(value.length - 1);
                          onChanged(newValue.join(''));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KeyPad extends StatelessWidget {
  const KeyPad({super.key, this.number, this.icon, required this.onPressed})
      : assert((number != null) || (icon != null));

  final int? number;
  final Widget? icon;
  final ValueChanged<int?> onPressed;

  @override
  Widget build(BuildContext context) {
    return AnimateButton(
      onPressed: () => number != null ? onPressed(number) : onPressed(null),
      child: Container(
        height: 50.h,
        width: 119.w,
        child: Center(
          child: number == null
              ? icon
              : Text(
                  number!.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
        ),
      ),
    );
  }
}
