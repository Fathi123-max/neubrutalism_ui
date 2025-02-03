import 'dart:io';

abstract class GeminiRepository {
  Stream<String> processImage(File imageFile);
}
