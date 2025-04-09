import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/app/navigation/routes.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:my_app/app/ui/theme/app_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 2),
              Text(
                'Welcome to Catbreeds',
                style: AppTypography.titleLarge.copyWith(fontSize: 28),
              ),
              const SizedBox(height: 12),
              Text(
                'Meow! Welcome aboard',
                style: AppTypography.body.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'It’s about to get real fluffy around here.',
                style: AppTypography.body.copyWith(
                  fontSize: 14,
                  color: AppColors.textSecondary,
                ),
              ),
              const Spacer(flex: 3),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    context.go(AppRoute.landing.path);
                  },
                  child: const Text("Let's explore!"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
