enum AppRoute {
  splash,
  landing,
  details,
  welcome,
}

extension AppRouteExtension on AppRoute {
  String get path {
    switch (this) {
      case AppRoute.splash:
        return '/';
      case AppRoute.welcome:
        return '/home';
      case AppRoute.landing:
        return '/landing';
      case AppRoute.details:
        return '/details';
    }
  }
}
