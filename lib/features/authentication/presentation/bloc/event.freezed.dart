// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String smsCode, String verificationId) verifyOtp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String smsCode, String verificationId)? verifyOtp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String smsCode, String verificationId)? verifyOtp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendOtpEventImplCopyWith<$Res> {
  factory _$$SendOtpEventImplCopyWith(
    _$SendOtpEventImpl value,
    $Res Function(_$SendOtpEventImpl) then,
  ) = __$$SendOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendOtpEventImpl>
    implements _$$SendOtpEventImplCopyWith<$Res> {
  __$$SendOtpEventImplCopyWithImpl(
    _$SendOtpEventImpl _value,
    $Res Function(_$SendOtpEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null}) {
    return _then(
      _$SendOtpEventImpl(
        null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SendOtpEventImpl implements SendOtpEvent {
  const _$SendOtpEventImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.sendOtp(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      __$$SendOtpEventImplCopyWithImpl<_$SendOtpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String smsCode, String verificationId) verifyOtp,
  }) {
    return sendOtp(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String smsCode, String verificationId)? verifyOtp,
  }) {
    return sendOtp?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String smsCode, String verificationId)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class SendOtpEvent implements AuthEvent {
  const factory SendOtpEvent(final String phoneNumber) = _$SendOtpEventImpl;

  String get phoneNumber;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOtpEventImplCopyWith<_$SendOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpEventImplCopyWith<$Res> {
  factory _$$VerifyOtpEventImplCopyWith(
    _$VerifyOtpEventImpl value,
    $Res Function(_$VerifyOtpEventImpl) then,
  ) = __$$VerifyOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode, String verificationId});
}

/// @nodoc
class __$$VerifyOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpEventImpl>
    implements _$$VerifyOtpEventImplCopyWith<$Res> {
  __$$VerifyOtpEventImplCopyWithImpl(
    _$VerifyOtpEventImpl _value,
    $Res Function(_$VerifyOtpEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? smsCode = null, Object? verificationId = null}) {
    return _then(
      _$VerifyOtpEventImpl(
        null == smsCode
            ? _value.smsCode
            : smsCode // ignore: cast_nullable_to_non_nullable
                as String,
        null == verificationId
            ? _value.verificationId
            : verificationId // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyOtpEventImpl implements VerifyOtpEvent {
  const _$VerifyOtpEventImpl(this.smsCode, this.verificationId);

  @override
  final String smsCode;
  @override
  final String verificationId;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(smsCode: $smsCode, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpEventImpl &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode, verificationId);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      __$$VerifyOtpEventImplCopyWithImpl<_$VerifyOtpEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) sendOtp,
    required TResult Function(String smsCode, String verificationId) verifyOtp,
  }) {
    return verifyOtp(smsCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? sendOtp,
    TResult? Function(String smsCode, String verificationId)? verifyOtp,
  }) {
    return verifyOtp?.call(smsCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? sendOtp,
    TResult Function(String smsCode, String verificationId)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(smsCode, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendOtpEvent value) sendOtp,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendOtpEvent value)? sendOtp,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendOtpEvent value)? sendOtp,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpEvent implements AuthEvent {
  const factory VerifyOtpEvent(
    final String smsCode,
    final String verificationId,
  ) = _$VerifyOtpEventImpl;

  String get smsCode;
  String get verificationId;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
