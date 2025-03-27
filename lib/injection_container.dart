

import 'package:get_it/get_it.dart';
import 'package:my_cqu/core/storage/storage.dart';
import 'package:my_cqu/feature/splash/cubit/splash_cubit.dart';

final sl = GetIt.instance;

Future<void> init()async{
  // cubit
  sl.registerFactory(()=> SplashCubit(secureStorage: sl()));


  // external
  sl.registerFactory(()=> SecureStorage());

}