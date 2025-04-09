import 'package:flutter/material.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:my_app/app/ui/theme/app_typography.dart';
import 'package:my_app/app/ui/widgets/cat_app_bar.dart';
import 'package:my_app/data/models/breed_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    required this.breed,
    super.key,
  });
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CatAppBar(
        title: 'Catbreeds',
        showBackButton: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Image
            if (breed.imageUrl.isNotEmpty)
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  breed.imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 12),
            // Name
            const Text(
              'What’s up! \nNice to meet you, human 🐾',
              style: AppTypography.titleMedium,
              textAlign: TextAlign.center,
            ),

            // Description
            const SizedBox(height: 10),
            Text(
              breed.description,
              textAlign: TextAlign.justify,
              style: AppTypography.small.copyWith(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 10),
            const Divider(color: AppColors.textSecondary),

            // Info Rows
            _infoRow('Origin', breed.origin),
            _infoRow('Intelligence', breed.intelligence.toString()),
            _infoRow('Adaptability', breed.adaptability.toString()),
            _infoRow('Life Span', '${breed.lifeSpan} years'),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$title: ',
            style: AppTypography.titleMedium,
          ),
          Expanded(
            child: Text(
              value,
              style: AppTypography.body,
            ),
          ),
        ],
      ),
    );
  }
}
