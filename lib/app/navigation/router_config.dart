import 'package:go_router/go_router.dart';
import 'package:my_app/app/navigation/routes.dart';
import 'package:my_app/app/view/screens/details/details_screen.dart';
import 'package:my_app/app/view/screens/home/home_screen.dart';
import 'package:my_app/app/view/screens/landing/landing_screen.dart';
import 'package:my_app/app/view/screens/splash/splash_screen.dart';
import 'package:my_app/data/models/breed_model.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: AppRoute.splash.path,
  routes: [
    GoRoute(
      path: AppRoute.splash.path,
      name: AppRoute.splash.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoute.home.path,
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoute.landing.path,
      name: AppRoute.landing.name,
      builder: (context, state) => const LandingScreen(),
    ),
    GoRoute(
      path: '/details',
      name: 'details',
      builder: (context, state) {
        final breed = state.extra! as Breed;
        return DetailScreen(breed: breed);
      },
    ),
  ],
);
