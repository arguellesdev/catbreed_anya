import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';
import 'package:my_app/app/ui/theme/app_typography.dart';
import 'package:my_app/app/ui/widgets/cat_app_bar.dart';
import 'package:my_app/core/network/dio_client.dart';
import 'package:my_app/data/models/breed_model.dart';
import 'package:my_app/data/services/breed_service.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final BreedService _breedService = BreedService(DioClient());
  List<Breed> _breeds = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadBreeds();
  }

  Future<void> _loadBreeds() async {
    final breeds = await _breedService.getBreeds();
    setState(() {
      _breeds = breeds;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CatAppBar(
        title: 'Catbreeds',
        showBackButton: false,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _breeds.isEmpty
              ? const Center(
                  child: Text(
                    'No breeds found',
                    style: AppTypography.titleMedium,
                  ),
                )
              : RefreshIndicator(
                  color: AppColors.primary,
                  backgroundColor: AppColors.background,
                  onRefresh: _loadBreeds,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _breeds.length,
                    itemBuilder: (context, index) {
                      final breed = _breeds[index];

                      return Card(
                        elevation: 3,
                        margin: const EdgeInsets.only(bottom: 16),
                        color: AppColors.cardBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 24,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                contentPadding: const EdgeInsets.all(8),
                                horizontalTitleGap: 36,
                                leading: breed.imageUrl.isNotEmpty
                                    ? ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: Image.network(
                                          breed.imageUrl,
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : const Icon(Icons.image_not_supported),
                                title: Text(
                                  breed.name,
                                  style: AppTypography.titleMedium,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 4),
                                    Text(
                                      'Origin: ${breed.origin}',
                                      style: AppTypography.body,
                                    ),
                                    Text(
                                      'Intelligence: ${breed.intelligence}',
                                      style: AppTypography.body,
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  context.push('/details', extra: breed);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
    );
  }
}
