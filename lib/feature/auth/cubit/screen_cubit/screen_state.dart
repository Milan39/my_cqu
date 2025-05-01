part of 'screen_cubit.dart';

class ScreenState extends Equatable {
  final bool hidePassword;
  final bool isRemembered;

  const ScreenState({this.hidePassword = false, this.isRemembered = false});

  ScreenState copyWith({bool? hidePassword, bool? isRemembered}) {
    return ScreenState(
      hidePassword: hidePassword ?? this.hidePassword,
      isRemembered: isRemembered ?? this.isRemembered,
    );
  }

  @override
  List<Object?> get props => [hidePassword, isRemembered];
}
