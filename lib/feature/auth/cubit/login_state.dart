part of 'login_cubit.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus loginStatus;
  final bool hidePassword;
  final bool isRemembered;

  const LoginState({
    this.loginStatus = LoginStatus.initial,
    this.hidePassword = true,
    this.isRemembered = false,
  });

  LoginState copyWith({
    LoginStatus? loginStatus,
    bool? hidePassword,
    bool? isRemembered,
  }) {
    return LoginState(
      loginStatus: loginStatus ?? this.loginStatus,
      isRemembered: isRemembered ?? this.isRemembered,
      hidePassword: hidePassword ?? this.hidePassword,
    );
  }

  @override
  List<Object?> get props => [loginStatus, hidePassword, isRemembered];
}
