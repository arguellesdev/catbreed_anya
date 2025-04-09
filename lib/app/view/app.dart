import 'package:flutter/material.dart';
import 'package:my_app/app/navigation/router_config.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:my_app/app/ui/theme/app_typography.dart';
import 'package:my_app/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Catbreeds',
      theme: ThemeData(
        fontFamily: 'Inter',
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.cardBackground,
          centerTitle: true,
          titleTextStyle: AppTypography.titleMedium,
        ),
        textTheme: const TextTheme(
          bodyMedium: AppTypography.body,
          titleLarge: AppTypography.titleLarge,
          titleMedium: AppTypography.titleMedium,
        ),
      ),
      routerConfig: router,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
    );
  }
}
