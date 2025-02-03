import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart' as cameraState;
import 'package:example/core/config/app_config.dart';
import 'package:example/core/di/service_locator.dart';
import 'package:example/features/camera/data/datasources/gemini_remote_datasource.dart';
import 'package:example/features/camera/data/repositories/gemini_repository_impl.dart';
import 'package:example/features/camera/presentation/bloc/camera_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  void _showResponseBottomSheet(BuildContext context, String response) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Analysis Result',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: SingleChildScrollView(
                  child: AnimatedList(
                    key: GlobalKey<AnimatedListState>(),
                    initialItemCount: response.split('\n').length,
                    shrinkWrap: true,
                    itemBuilder: (context, index, animation) {
                      return SizeTransition(
                        sizeFactor: animation,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            response.split('\n')[index],
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: NeuTextButton(
                  onPressed: () => Navigator.pop(context),
                  buttonColor: Colors.grey[200]!,
                  enableAnimation: true,
                  child: const Text('Close'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CameraBloc, CameraState>(
        bloc: getIt<CameraBloc>(),
        listener: (context, state) {
          if (state is CameraSuccess) {
            _showResponseBottomSheet(context, state.response);
          } else if (state is CameraError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: cameraState.CameraAwesomeBuilder.awesome(
            saveConfig: cameraState.SaveConfig.photo(
                // pathBuilder: () async {
                //   final Directory extDir = await getApplicationDocumentsDirectory();
                //   final String dirPath = '${extDir.path}/Pictures/flutter_test';
                //   await Directory(dirPath).create(recursive: true);
                //   final String filePath = '$dirPath/${DateTime.now().millisecondsSinceEpoch}.jpg';
                //   return filePath;
                // },
                ),
            onMediaTap: (mediaCapture) {
              // print('Image captured at: ${mediaCapture.filePath}');
              // TODO: Handle captured photo
            },
            // aspectRatio: CameraAspectRatios.ratio_16_9,
            previewFit: cameraState.CameraPreviewFit.cover,
            topActionsBuilder: (state) => Container(),
            middleContentBuilder: (state) => Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.5),
                  ],
                ),
              ),
            ),
            bottomActionsBuilder: (state) => Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NeuIconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 28),
                    buttonColor: Colors.grey[800]!,
                    enableAnimation: true,
                    borderRadius: BorderRadius.circular(12),
                    // padding: const EdgeInsets.all(12),
                  ),
                  NeuIconButton(
                    onPressed: () => state.when(
                      onPhotoMode: (photoState) async {
                        try {
                          await photoState.takePhoto();
                          if (photoState.captureState?.status ==
                              cameraState.MediaCaptureStatus.success) {
                            final imagePath =
                                photoState.captureState!.captureRequest.when(
                              single: (singleRequest) => singleRequest.path,
                            );

                            if (imagePath != null) {
                              try {
                                context
                                    .read<CameraBloc>()
                                    .add(ProcessImageEvent(File(imagePath)));
                              } catch (e) {
                                print('Error processing image: $e');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(e.toString()),
                                    duration: const Duration(seconds: 3),
                                  ),
                                );
                              }
                            } else {
                              print('Error: Image path is null');
                            }
                          } else {
                            print('Error: Photo capture failed');
                          }
                        } catch (e) {
                          print('Error taking photo: $e');
                        }
                      },
                    ),
                    icon:
                        const Icon(Icons.camera, color: Colors.white, size: 36),
                    buttonColor: Colors.grey[800]!,
                    enableAnimation: true,
                    borderRadius: BorderRadius.circular(30),
                    // padding: const EdgeInsets.all(16),
                  ),
                  NeuIconButton(
                    onPressed: () => state.switchCameraSensor(),
                    icon: const Icon(Icons.flip_camera_ios,
                        color: Colors.white, size: 28),
                    buttonColor: Colors.grey[800]!,
                    enableAnimation: true,
                    borderRadius: BorderRadius.circular(12),
                    // padding: const EdgeInsets.all(12),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
