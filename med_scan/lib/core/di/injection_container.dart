import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // External Dependencies
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPreferences);

  // Core
  sl.registerLazySingleton(() => NavigationService());
  sl.registerLazySingleton(() => ConnectivityService());
  sl.registerLazySingleton(() => LocalStorageService(sl()));

  // // Features - Auth
  // sl.registerFactory(() => AuthBloc(sl()));
  // sl.registerLazySingleton(() => AuthRepository(sl()));
  // sl.registerLazySingleton<AuthDataSource>(
  //   () => AuthDataSourceImpl(sl()),
  // );

  // // Features - Profile
  // sl.registerFactory(() => ProfileBloc(sl()));
  // sl.registerLazySingleton(() => ProfileRepository(sl()));
  // sl.registerLazySingleton<ProfileDataSource>(
  //   () => ProfileDataSourceImpl(sl()),
  // );

  // // Features - Medical Services
  // sl.registerFactory(() => MedicalServicesBloc(sl()));
  // sl.registerLazySingleton(() => MedicalServicesRepository(sl()));
  // sl.registerLazySingleton<MedicalServicesDataSource>(
  //   () => MedicalServicesDataSourceImpl(sl()),
  // );
}

class NavigationService {}

class ConnectivityService {}

class LocalStorageService {
  LocalStorageService(SharedPreferences prefs);
}

// Auth
class AuthBloc {}

class AuthRepository {}

class AuthDataSource {}

class AuthDataSourceImpl implements AuthDataSource {}

// Profile
class ProfileBloc {}

class ProfileRepository {}

class ProfileDataSource {}

class ProfileDataSourceImpl implements ProfileDataSource {}

// Medical Services
class MedicalServicesBloc {}

class MedicalServicesRepository {}

class MedicalServicesDataSource {}

class MedicalServicesDataSourceImpl implements MedicalServicesDataSource {}
