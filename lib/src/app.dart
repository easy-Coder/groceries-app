import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app/src/router/app_router.dart';
import 'package:groceries_app/src/theme/theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      ensureScreenSize: true,
      splitScreenMode: true,
      builder: (context, child) => child!,
      child: MaterialApp.router(
        theme: AppThemeData.themeLight,
        darkTheme: AppThemeData.themeDark,
        themeMode: ThemeMode.system,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
