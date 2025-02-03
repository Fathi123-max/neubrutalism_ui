part of 'camera_bloc.dart';

abstract class CameraEvent extends Equatable {
  const CameraEvent();

  @override
  List<Object> get props => [];
}

class ProcessImageEvent extends CameraEvent {
  final File image;

  const ProcessImageEvent(this.image);

  @override
  List<Object> get props => [image];
}
