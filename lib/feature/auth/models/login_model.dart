import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

part 'login_model.g.dart';

@freezed
class LoginPayLoadModel with _$LoginPayLoadModel {
  const factory LoginPayLoadModel({
    required String username,
    required String password,
  }) = _LoginPayLoadModel;

  factory LoginPayLoadModel.fromJson(Map<String, dynamic> json) =>
      _$LoginPayLoadModelFromJson(json);
}
