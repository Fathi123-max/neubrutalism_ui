import 'package:equatable/equatable.dart';

class MedicalService extends Equatable {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final bool isAvailable;
  final DateTime availableFrom;
  final DateTime availableTo;
  final List<String> categories;

  const MedicalService({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.isAvailable,
    required this.availableFrom,
    required this.availableTo,
    required this.categories,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        imageUrl,
        isAvailable,
        availableFrom,
        availableTo,
        categories,
      ];
}
