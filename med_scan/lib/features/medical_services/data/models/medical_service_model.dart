import '../../domain/entities/medical_service.dart';

class MedicalServiceModel extends MedicalService {
  const MedicalServiceModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required bool isAvailable,
    required DateTime availableFrom,
    required DateTime availableTo,
    required List<String> categories,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          imageUrl: imageUrl,
          isAvailable: isAvailable,
          availableFrom: availableFrom,
          availableTo: availableTo,
          categories: categories,
        );

  factory MedicalServiceModel.fromJson(Map<String, dynamic> json) {
    return MedicalServiceModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      isAvailable: json['isAvailable'] as bool,
      availableFrom: DateTime.parse(json['availableFrom'] as String),
      availableTo: DateTime.parse(json['availableTo'] as String),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'isAvailable': isAvailable,
      'availableFrom': availableFrom.toIso8601String(),
      'availableTo': availableTo.toIso8601String(),
      'categories': categories,
    };
  }
}
