// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationState {
  bool? get passwordDoesntMatch => throw _privateConstructorUsedError;
  AuthModel? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call({bool? passwordDoesntMatch, AuthModel? user});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordDoesntMatch = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      passwordDoesntMatch: freezed == passwordDoesntMatch
          ? _value.passwordDoesntMatch
          : passwordDoesntMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? passwordDoesntMatch, AuthModel? user});
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordDoesntMatch = freezed,
    Object? user = freezed,
  }) {
    return _then(_$RegistrationStateImpl(
      passwordDoesntMatch: freezed == passwordDoesntMatch
          ? _value.passwordDoesntMatch
          : passwordDoesntMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl({this.passwordDoesntMatch, this.user});

  @override
  final bool? passwordDoesntMatch;
  @override
  final AuthModel? user;

  @override
  String toString() {
    return 'RegistrationState(passwordDoesntMatch: $passwordDoesntMatch, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.passwordDoesntMatch, passwordDoesntMatch) ||
                other.passwordDoesntMatch == passwordDoesntMatch) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordDoesntMatch, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {final bool? passwordDoesntMatch,
      final AuthModel? user}) = _$RegistrationStateImpl;

  @override
  bool? get passwordDoesntMatch;
  @override
  AuthModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
