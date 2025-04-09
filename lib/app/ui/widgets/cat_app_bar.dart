import 'package:flutter/material.dart';
import 'package:my_app/app/navigation/routes.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';

class CatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CatAppBar({required this.title, this.showBackButton = true, super.key});

  final String title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
        0,
      ),
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              color: AppColors.cardBackground,
              iconSize: 55,
              onPressed: () => AppRoute.landing,
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.cardBackground,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
