import 'dart:io';
import '../../domain/repositories/gemini_repository.dart';
import '../datasources/gemini_remote_datasource.dart';

class GeminiRepositoryImpl implements GeminiRepository {
  final GeminiRemoteDataSource remoteDataSource;

  GeminiRepositoryImpl({required this.remoteDataSource});

  @override
  Stream<String> processImage(File imageFile) {
    return remoteDataSource.processImage(imageFile);
  }
}
