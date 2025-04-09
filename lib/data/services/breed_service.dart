import 'package:my_app/core/network/dio_client.dart';
import 'package:my_app/data/models/breed_model.dart';

/// This service fetches cat breeds from The Cat API
class BreedService {
  BreedService(this.dioClient);
  final DioClient dioClient;

  /// Fetches a list of cat breeds and converts them to Breed objects
  Future<List<Breed>> getBreeds() async {
    try {
      final response = await dioClient.client.get<List<dynamic>>('breeds');
      if (response.statusCode != 200) {
        throw Exception('Failed to load breeds');
      }
      final data = response.data!;
      return data
          .map((json) => Breed.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw Exception('Error fetching breeds: $e');
    }
  }
}
