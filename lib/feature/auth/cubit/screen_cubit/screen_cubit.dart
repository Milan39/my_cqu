import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'screen_state.dart';

class ScreenCubit extends Cubit<ScreenState> {
  ScreenCubit() : super(ScreenState());

  void togglePassword() {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }

  void toggleIsRemembered() {
    emit(state.copyWith(isRemembered: !state.isRemembered));
  }
}
