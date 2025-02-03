// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiResponseModel _$GeminiResponseModelFromJson(Map<String, dynamic> json) {
  return _GeminiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GeminiResponseModel {
  String get text => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Serializes this GeminiResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeminiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeminiResponseModelCopyWith<GeminiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiResponseModelCopyWith<$Res> {
  factory $GeminiResponseModelCopyWith(
          GeminiResponseModel value, $Res Function(GeminiResponseModel) then) =
      _$GeminiResponseModelCopyWithImpl<$Res, GeminiResponseModel>;
  @useResult
  $Res call({String text, DateTime timestamp});
}

/// @nodoc
class _$GeminiResponseModelCopyWithImpl<$Res, $Val extends GeminiResponseModel>
    implements $GeminiResponseModelCopyWith<$Res> {
  _$GeminiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeminiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiResponseModelImplCopyWith<$Res>
    implements $GeminiResponseModelCopyWith<$Res> {
  factory _$$GeminiResponseModelImplCopyWith(_$GeminiResponseModelImpl value,
          $Res Function(_$GeminiResponseModelImpl) then) =
      __$$GeminiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, DateTime timestamp});
}

/// @nodoc
class __$$GeminiResponseModelImplCopyWithImpl<$Res>
    extends _$GeminiResponseModelCopyWithImpl<$Res, _$GeminiResponseModelImpl>
    implements _$$GeminiResponseModelImplCopyWith<$Res> {
  __$$GeminiResponseModelImplCopyWithImpl(_$GeminiResponseModelImpl _value,
      $Res Function(_$GeminiResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? timestamp = null,
  }) {
    return _then(_$GeminiResponseModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiResponseModelImpl implements _GeminiResponseModel {
  const _$GeminiResponseModelImpl(
      {required this.text, required this.timestamp});

  factory _$GeminiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiResponseModelImplFromJson(json);

  @override
  final String text;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'GeminiResponseModel(text: $text, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiResponseModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, timestamp);

  /// Create a copy of GeminiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiResponseModelImplCopyWith<_$GeminiResponseModelImpl> get copyWith =>
      __$$GeminiResponseModelImplCopyWithImpl<_$GeminiResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GeminiResponseModel implements GeminiResponseModel {
  const factory _GeminiResponseModel(
      {required final String text,
      required final DateTime timestamp}) = _$GeminiResponseModelImpl;

  factory _GeminiResponseModel.fromJson(Map<String, dynamic> json) =
      _$GeminiResponseModelImpl.fromJson;

  @override
  String get text;
  @override
  DateTime get timestamp;

  /// Create a copy of GeminiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeminiResponseModelImplCopyWith<_$GeminiResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
