// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginPayLoadModel _$LoginPayLoadModelFromJson(Map<String, dynamic> json) {
  return _LoginPayLoadModel.fromJson(json);
}

/// @nodoc
mixin _$LoginPayLoadModel {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this LoginPayLoadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginPayLoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPayLoadModelCopyWith<LoginPayLoadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayLoadModelCopyWith<$Res> {
  factory $LoginPayLoadModelCopyWith(
    LoginPayLoadModel value,
    $Res Function(LoginPayLoadModel) then,
  ) = _$LoginPayLoadModelCopyWithImpl<$Res, LoginPayLoadModel>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginPayLoadModelCopyWithImpl<$Res, $Val extends LoginPayLoadModel>
    implements $LoginPayLoadModelCopyWith<$Res> {
  _$LoginPayLoadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPayLoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? password = null}) {
    return _then(
      _value.copyWith(
            username:
                null == username
                    ? _value.username
                    : username // ignore: cast_nullable_to_non_nullable
                        as String,
            password:
                null == password
                    ? _value.password
                    : password // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginPayLoadModelImplCopyWith<$Res>
    implements $LoginPayLoadModelCopyWith<$Res> {
  factory _$$LoginPayLoadModelImplCopyWith(
    _$LoginPayLoadModelImpl value,
    $Res Function(_$LoginPayLoadModelImpl) then,
  ) = __$$LoginPayLoadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginPayLoadModelImplCopyWithImpl<$Res>
    extends _$LoginPayLoadModelCopyWithImpl<$Res, _$LoginPayLoadModelImpl>
    implements _$$LoginPayLoadModelImplCopyWith<$Res> {
  __$$LoginPayLoadModelImplCopyWithImpl(
    _$LoginPayLoadModelImpl _value,
    $Res Function(_$LoginPayLoadModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginPayLoadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? username = null, Object? password = null}) {
    return _then(
      _$LoginPayLoadModelImpl(
        username:
            null == username
                ? _value.username
                : username // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPayLoadModelImpl implements _LoginPayLoadModel {
  const _$LoginPayLoadModelImpl({
    required this.username,
    required this.password,
  });

  factory _$LoginPayLoadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPayLoadModelImplFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginPayLoadModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPayLoadModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of LoginPayLoadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPayLoadModelImplCopyWith<_$LoginPayLoadModelImpl> get copyWith =>
      __$$LoginPayLoadModelImplCopyWithImpl<_$LoginPayLoadModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPayLoadModelImplToJson(this);
  }
}

abstract class _LoginPayLoadModel implements LoginPayLoadModel {
  const factory _LoginPayLoadModel({
    required final String username,
    required final String password,
  }) = _$LoginPayLoadModelImpl;

  factory _LoginPayLoadModel.fromJson(Map<String, dynamic> json) =
      _$LoginPayLoadModelImpl.fromJson;

  @override
  String get username;
  @override
  String get password;

  /// Create a copy of LoginPayLoadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPayLoadModelImplCopyWith<_$LoginPayLoadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
