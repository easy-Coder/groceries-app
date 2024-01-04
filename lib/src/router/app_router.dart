import 'package:go_router/go_router.dart';
import 'package:groceries_app/src/common/pages/welcome_screen.dart';
import 'package:groceries_app/src/features/auth/presentation/login_screen.dart';
import 'package:groceries_app/src/features/food/presentation/home_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

enum AppRouter {
  welcomeScreen,
  home,
  auth,
  cart,
  trackOrder,
  items,
  details,
}

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: '/welcome',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/welcome',
        name: AppRouter.welcomeScreen.name,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/login',
        name: AppRouter.auth.name,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/',
        name: AppRouter.home.name,
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
