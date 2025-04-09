import 'package:go_router/go_router.dart';
import 'package:my_app/app/navigation/routes.dart';
import 'package:my_app/app/view/screens/details/details_screen.dart';
import 'package:my_app/app/view/screens/home/welcome_screen.dart';
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
      path: AppRoute.welcome.path,
      name: AppRoute.welcome.name,
      builder: (context, state) => const WelcomePage(),
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
