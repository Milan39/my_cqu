import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/storage/storage.dart' show SecureStorage;
import 'package:shared_preferences/shared_preferences.dart' show SharedPreferences;


part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final SecureStorage secureStorage;
  final FlutterSecureStorage localStorage = const FlutterSecureStorage();
  SplashCubit({required this.secureStorage}) : super(SplashState());

  Future<void> _clearKeychainValues() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('is_first_app_launch') ?? true) {
      await localStorage.deleteAll();
      await prefs.setBool('is_first_app_launch', false);
    }
  }

  Future<void> initializeApp()async{
    if(Platform.isIOS) await _clearKeychainValues();
    await _loadAppState();

  }

  Future<void> _loadAppState() async {
    emit(state.copyWith(status: SplashStatus.authenticating));
    await Future.delayed(Duration(seconds: 3));
    emit(state.copyWith(status: SplashStatus.authorized));
  }



}
