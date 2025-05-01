import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  LoginCubit()
    : super(
        LoginState(
          usernameInstructions: [
            'Students: Your Username can be either your CQU email address or your student number - either one should work.',
            'Student emails look like: \njoe.bloggs2cqumail.com or s1234567@cqumail.com if you are using a student number that starts with a ‘c’ or ‘q’ then you’ll need to only use the first 8 character. For example, if your student id was Q12345678 then you would login using q1234567.',
            'Staff: your username or email address should ley you login, and should have been provided to you when you commenced work.',
            'Staff emails look like: j.bloggs@cqu.edu.au',
            'Usernames are all in lowercase (no capital letters). ',
          ],
          passwordInstructions: [
            'For Student your default password will be your 6 digit date of birth preceded by an  ‘s’ and followed with a ‘#’ For example,',
            'If your birth date was 01/August/1998, your default password would be s010898#',
            'If Your have further trouble, or contact details are on the bottom of thus login page',
          ],
        ),
      );

  loadLoginData() {
    emit(state.copyWith(usernameInstructions: [], passwordInstructions: []));
  }

  Future<void> loginUser() async {
    emit(state.copyWith(loginStatus: LoginStatus.loading));
    await Future.delayed(Duration(seconds: 3));
    try {
      if (formKey.currentState!.isValid) {
        final String username = formKey.currentState?.value['username'];
        final String password = formKey.currentState?.value['password'];
        if (username.toLowerCase() == 'milan.tilija@cqumail.com' &&
            password == "root1234") {
          emit(state.copyWith(loginStatus: LoginStatus.success));
        } else {
          for (var field in ['username', 'password']) {
            formKey.currentState?.fields[field]?.invalidate(
              "Invalid email or password",
            );
          }
          emit(state.copyWith(loginStatus: LoginStatus.failure));
        }
      }
    } catch (e) {
      emit(state.copyWith(loginStatus: LoginStatus.failure));
    }
  }
}
