part of 'init_dependencies.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  _initExternalDependencies();
  _initAuth();
  _initHomeDependencies();
}

void _initExternalDependencies() {
  sl.registerLazySingleton(() => SecureStorage());
}

void _initAuth() {
  sl.registerFactory(() => SplashCubit(secureStorage: sl()));
  sl.registerFactory(() => LoginCubit());
}

void _initHomeDependencies() {
  sl.registerFactory(() => BottomNavBarCubit(secureStorage: sl()));
  sl.registerFactory(() => HomeScreenCubit());
  sl.registerFactory(() => ImportantLinkCubit());
}
