import 'package:go_router/go_router.dart';
import 'package:my_cqu/feature/auth/presentation/screen/login_screen.dart';
import 'package:my_cqu/feature/home/screen/home_screen.dart';
import 'package:my_cqu/feature/splash/screen/splash_screen.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        name: 'splash',
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
