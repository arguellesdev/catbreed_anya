enum AppRoute {
  splash,
  landing,
  details,
  home,
}

extension AppRouteExtension on AppRoute {
  String get path {
    switch (this) {
      case AppRoute.splash:
        return '/';
      case AppRoute.home:
        return '/home';
      case AppRoute.landing:
        return '/landing';
      case AppRoute.details:
        return '/details';
    }
  }
}
