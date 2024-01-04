import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/gen/assets.gen.dart';
import 'package:groceries_app/src/common/annotate_scaffold.dart';
import 'package:groceries_app/src/common/button/animate_button.dart';
import 'package:groceries_app/src/common/button/outline_button.dart';
import 'package:groceries_app/src/theme/color.dart';
import 'package:groceries_app/src/theme/text_theme.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final promotion = [
    Assets.promotion.promotion1.path,
    Assets.promotion.promotion2.path,
    Assets.promotion.promotion2.path,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return AnnotatedScaffold(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -height * 0.69,
              left: -250,
              child: Container(
                width: 906.w,
                height: 906.h,
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: Theme.of(context).brightness == Brightness.light
                      ? const Color(0xffF3F5F7)
                      : const Color(0xff172C38),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // app bar
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xffDEDEE8),
                                  backgroundImage:
                                      Assets.image.avatar.provider(),
                                ),
                                11.horizontalSpace,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Good Morning"),
                                    Text(
                                      "Amelia Barlow",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(67.r),
                            ),
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? AppColors.white
                                    : AppColors.darkBG2Color,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                              child: Row(
                                children: [
                                  Assets.image.location.image(),
                                  8.horizontalSpace,
                                  Text(
                                    "My Flat",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  8.horizontalSpace,
                                  const Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // search
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Assets.image.search.image(
                            width: 52.w,
                            height: 52.h,
                          ),
                          prefixIconConstraints:
                              BoxConstraints.tight(const Size(52, 52)),
                          hintText: "Search category",
                        ),
                      ),
                    ),
                    // carosel
                    CarouselSlider.builder(
                      options: CarouselOptions(
                          height: 158.h, initialPage: 1, viewportFraction: 0.9),
                      itemCount: promotion.length,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) =>
                              Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Image.asset(promotion[index]),
                      ),
                    ),
                    24.verticalSpace,
                    // categories
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category 😋",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("See All")),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CategoryItem(
                                image: Assets.image.apple.path,
                                title: "Fruits",
                              ),
                              8.horizontalSpace,
                              CategoryItem(
                                image: Assets.image.broccoli.path,
                                title: "Vegetables",
                              ),
                              8.horizontalSpace,
                              CategoryItem(
                                image: Assets.image.cheese.path,
                                title: "Diary",
                              ),
                              8.horizontalSpace,
                              CategoryItem(
                                image: Assets.image.meat.path,
                                title: "Meat",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    24.verticalSpace,
                    // best selling
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Best Selling 🔥",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text("See All")),
                            ],
                          ),
                          Wrap(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FoodCard(
                                image: Assets.image.bellPepper.path,
                                title: "Bell Pepper Red",
                              ),
                              FoodCard(
                                image: Assets.image.beefFood.path,
                                title: "Lamb Meat",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          height: 50.h,
          padding: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 12.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimateButton(
                onPressed: () {},
                child: Assets.image.home.image(
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.darkFontColor
                      : AppColors.white,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
              AnimateButton(
                onPressed: () {},
                child: Assets.image.list.image(
                  width: 24.w,
                  height: 24.w,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.lightFontGreyColor
                      : null,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              AnimateButton(
                onPressed: () {},
                child: Assets.image.pad.image(
                  width: 24.w,
                  height: 24.w,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.lightFontGreyColor
                      : null,
                ),
              ),
              AnimateButton(
                onPressed: () {},
                child: Assets.image.user.image(
                  width: 24.w,
                  height: 24.w,
                  color: Theme.of(context).brightness == Brightness.light
                      ? AppColors.lightFontGreyColor
                      : null,
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Stack(
          clipBehavior: Clip.none,
          children: [
            FloatingActionButton(
              shape: const OvalBorder(),
              onPressed: () {},
              elevation: 0,
              child: Assets.image.shoppingCart.image(),
            ),
            Positioned(
              bottom: -10,
              left: (28 - 10).w,
              child: Container(
                  width: 20.w,
                  height: 20.w,
                  decoration: const ShapeDecoration(
                    shape: OvalBorder(
                      side: BorderSide(
                        color: AppColors.white,
                      ),
                    ),
                    color: Colors.red,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "4",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 214.h,
          width: 150.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SizedBox(
                  child: Image.asset(image),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1kg, 4\$",
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.red,
                                    fontSize: 16.sp,
                                  ),
                        ),
                        OutlineButton(
                          icon: const Icon(
                            Icons.add_rounded,
                            color: AppColors.white,
                          ),
                          color: AppColors.primaryColor,
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;

  final String image;

  const CategoryItem({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: const OvalBorder(),
          child: Padding(
            padding: EdgeInsets.all(19.w),
            child: Image.asset(image),
          ),
        ),
        8.verticalSpace,
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
