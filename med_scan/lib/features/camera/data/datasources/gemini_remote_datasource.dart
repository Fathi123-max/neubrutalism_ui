import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart';

abstract class GeminiRemoteDataSource {
  Stream<String> processImage(File imageFile);
}

class GeminiRemoteDataSourceImpl implements GeminiRemoteDataSource {
  final GenerativeModel _model;

  GeminiRemoteDataSourceImpl({
    required String apiKey,
  }) : _model = GenerativeModel(
          model: 'gemini-1.5-pro',
          apiKey: apiKey,
        );

  @override
  Stream<String> processImage(File imageFile) async* {
    try {
      final data = await imageFile.readAsBytes();
      final prompt = TextPart(
          'Analyze this medical image and provide detailed observations');
      final imagePart = DataPart('image/jpeg', data);

      final response = _model.generateContentStream([
        Content.multi([prompt, imagePart])
      ]);
      await for (final res in response) {
        if (res.text != null && res.text!.isNotEmpty) {
          for (final line in res.text!.split('\n')) {
            if (line.isNotEmpty) yield line;
          }
        }
      }
    } catch (e) {
      yield* Stream.error('Error processing image: $e');
    }
  }
}
