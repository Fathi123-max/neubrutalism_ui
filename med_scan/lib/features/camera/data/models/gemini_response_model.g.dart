// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiResponseModelImpl _$$GeminiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiResponseModelImpl(
      text: json['text'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$GeminiResponseModelImplToJson(
        _$GeminiResponseModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'timestamp': instance.timestamp.toIso8601String(),
    };
