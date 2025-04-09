class Breed {
  const Breed({
    required this.id,
    required this.name,
    required this.origin,
    required this.description,
    required this.intelligence,
    required this.adaptability,
    required this.lifeSpan,
    required this.imageUrl,
  });

  factory Breed.fromJson(Map<String, dynamic> json) {
    final imageMap = json['image'] as Map<String, dynamic>?;

    return Breed(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      origin: json['origin'] as String? ?? 'Unknown',
      description:
          json['description'] as String? ?? 'No description available.',
      intelligence: json['intelligence'] as int? ?? 0,
      adaptability: json['adaptability'] as int? ?? 0,
      lifeSpan: json['life_span'] as String? ?? 'N/A',
      imageUrl: imageMap?['url'] as String? ?? '',
    );
  }
  final String id;
  final String name;
  final String origin;
  final String description;
  final int intelligence;
  final int adaptability;
  final String lifeSpan;
  final String imageUrl;
}
