import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:example/core/di/service_locator.dart';
import 'package:example/features/camera/data/repositories/gemini_repository_impl.dart';

part 'camera_event.dart';
part 'camera_state.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final GeminiRepositoryImpl repository;

  CameraBloc({required this.repository}) : super(CameraInitial()) {
    on<ProcessImageEvent>(_onProcessImage);
  }

  Future<void> _onProcessImage(
      ProcessImageEvent event, Emitter<CameraState> emit) async {
    emit(CameraLoading());
    try {
      await for (final response in repository.processImage(event.image)) {
        emit(CameraSuccess(response));
      }
    } catch (e) {
      emit(CameraError(e.toString()));
    }
  }
}
