import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  LoginCubit() : super(LoginState());

  Future<void> loginUser() async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));
    try {
      if (formKey.currentState!.isValid) {
        final String username = formKey.currentState?.value['username'];
        final String password = formKey.currentState?.value['password'];
        if (username.toLowerCase() == 'milan.tilija@cqumail.com' && password == "root1234") {
          emit(state.copyWith(loginStatus: LoginStatus.success));
        } else {
          emit(state.copyWith(loginStatus: LoginStatus.failure));
        }

      }
    } catch (e) {
      emit(state.copyWith(loginStatus: LoginStatus.failure));
    }
  }

  void togglePassword() {
    emit(state.copyWith(hidePassword: !state.hidePassword));
  }

  void toggleIsRemembered() {
    emit(state.copyWith(isRemembered: !state.isRemembered));
  }
}
