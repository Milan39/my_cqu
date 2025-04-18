part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus loginStatus;
  final bool hidePassword;
  final bool isRemembered;
  final List<String> usernameInstructions;
  final List<String> passwordInstructions;

  const LoginState({
    this.loginStatus = LoginStatus.initial,
    this.hidePassword = true,
    this.isRemembered = false,
    this.usernameInstructions = const [],
    this.passwordInstructions = const [],
  });

  LoginState copyWith({
    LoginStatus? loginStatus,
    bool? hidePassword,
    bool? isRemembered,
    List<String>? usernameInstructions,
    List<String>? passwordInstructions,
  }) {
    return LoginState(
      loginStatus: loginStatus ?? this.loginStatus,
      isRemembered: isRemembered ?? this.isRemembered,
      hidePassword: hidePassword ?? this.hidePassword,
      usernameInstructions: usernameInstructions ?? this.usernameInstructions,
      passwordInstructions: passwordInstructions ?? this.passwordInstructions,
    );
  }

  @override
  List<Object?> get props => [
    loginStatus,
    hidePassword,
    isRemembered,
    usernameInstructions,
    passwordInstructions,
  ];
}
