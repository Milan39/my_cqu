

import 'package:get_it/get_it.dart';
import 'package:my_cqu/core/storage/storage.dart';
import 'package:my_cqu/feature/auth/cubit/login_cubit.dart';
import 'package:my_cqu/feature/splash/cubit/splash_cubit.dart';

final sl = GetIt.instance;

Future<void> init()async{
  // cubit
  sl.registerFactory(()=> SplashCubit(secureStorage: sl()));
  sl.registerFactory(()=> LoginCubit());


  // external
  sl.registerFactory(()=> SecureStorage());

}