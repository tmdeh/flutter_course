class RecipeIngredient {
  final int id;
  final String name;
  final String image;

  const RecipeIngredient({
    required this.id,
    required this.name,
    required this.image,
  });

  factory RecipeIngredient.fromJson(Map<String, dynamic> json) {
    return RecipeIngredient(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: (json['name'] as String?) ?? '',
      image: (json['image'] as String?) ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'image': image,
  };

  @override
  String toString() =>
      'Ingredient(id: $id, name: $name, image: $image)';
}