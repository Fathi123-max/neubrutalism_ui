import 'package:get_it/get_it.dart';
import 'package:example/core/config/app_config.dart';
import 'package:example/features/camera/data/datasources/gemini_remote_datasource.dart';
import 'package:example/features/camera/data/repositories/gemini_repository_impl.dart';
import 'package:example/features/camera/presentation/bloc/camera_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Data sources
  getIt.registerLazySingleton<GeminiRemoteDataSourceImpl>(
    () => GeminiRemoteDataSourceImpl(apiKey: AppConfig.geminiApiKey),
  );

  // Repositories
  getIt.registerLazySingleton<GeminiRepositoryImpl>(
    () => GeminiRepositoryImpl(
        remoteDataSource: getIt<GeminiRemoteDataSourceImpl>()),
  );

  // Blocs
  getIt.registerSingleton<CameraBloc>(
    CameraBloc(repository: getIt<GeminiRepositoryImpl>()),
  );
}
