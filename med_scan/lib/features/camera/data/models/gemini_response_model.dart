import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response_model.g.dart';
part 'gemini_response_model.freezed.dart';

@freezed
class GeminiResponseModel with _$GeminiResponseModel {
  const factory GeminiResponseModel({
    required String text,
    required DateTime timestamp,
  }) = _GeminiResponseModel;

  factory GeminiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseModelFromJson(json);
}
