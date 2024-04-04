// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qris_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrisEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQris,
    required TResult Function(String orderId) checkQrisStatus,
    required TResult Function(String orderId) cancelQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQris,
    TResult? Function(String orderId)? checkQrisStatus,
    TResult? Function(String orderId)? cancelQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQris,
    TResult Function(String orderId)? checkQrisStatus,
    TResult Function(String orderId)? cancelQris,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQris value) generateQris,
    required TResult Function(_CheckQrisStatus value) checkQrisStatus,
    required TResult Function(_CancelQris value) cancelQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQris value)? generateQris,
    TResult? Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult? Function(_CancelQris value)? cancelQris,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQris value)? generateQris,
    TResult Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult Function(_CancelQris value)? cancelQris,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrisEventCopyWith<$Res> {
  factory $QrisEventCopyWith(QrisEvent value, $Res Function(QrisEvent) then) =
      _$QrisEventCopyWithImpl<$Res, QrisEvent>;
}

/// @nodoc
class _$QrisEventCopyWithImpl<$Res, $Val extends QrisEvent>
    implements $QrisEventCopyWith<$Res> {
  _$QrisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$QrisEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'QrisEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQris,
    required TResult Function(String orderId) checkQrisStatus,
    required TResult Function(String orderId) cancelQris,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQris,
    TResult? Function(String orderId)? checkQrisStatus,
    TResult? Function(String orderId)? cancelQris,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQris,
    TResult Function(String orderId)? checkQrisStatus,
    TResult Function(String orderId)? cancelQris,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQris value) generateQris,
    required TResult Function(_CheckQrisStatus value) checkQrisStatus,
    required TResult Function(_CancelQris value) cancelQris,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQris value)? generateQris,
    TResult? Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult? Function(_CancelQris value)? cancelQris,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQris value)? generateQris,
    TResult Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult Function(_CancelQris value)? cancelQris,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QrisEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GenerateQrisImplCopyWith<$Res> {
  factory _$$GenerateQrisImplCopyWith(
          _$GenerateQrisImpl value, $Res Function(_$GenerateQrisImpl) then) =
      __$$GenerateQrisImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, int grossAmount});
}

/// @nodoc
class __$$GenerateQrisImplCopyWithImpl<$Res>
    extends _$QrisEventCopyWithImpl<$Res, _$GenerateQrisImpl>
    implements _$$GenerateQrisImplCopyWith<$Res> {
  __$$GenerateQrisImplCopyWithImpl(
      _$GenerateQrisImpl _value, $Res Function(_$GenerateQrisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? grossAmount = null,
  }) {
    return _then(_$GenerateQrisImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenerateQrisImpl implements _GenerateQris {
  const _$GenerateQrisImpl(this.orderId, this.grossAmount);

  @override
  final String orderId;
  @override
  final int grossAmount;

  @override
  String toString() {
    return 'QrisEvent.generateQris(orderId: $orderId, grossAmount: $grossAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateQrisImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, grossAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateQrisImplCopyWith<_$GenerateQrisImpl> get copyWith =>
      __$$GenerateQrisImplCopyWithImpl<_$GenerateQrisImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQris,
    required TResult Function(String orderId) checkQrisStatus,
    required TResult Function(String orderId) cancelQris,
  }) {
    return generateQris(orderId, grossAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQris,
    TResult? Function(String orderId)? checkQrisStatus,
    TResult? Function(String orderId)? cancelQris,
  }) {
    return generateQris?.call(orderId, grossAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQris,
    TResult Function(String orderId)? checkQrisStatus,
    TResult Function(String orderId)? cancelQris,
    required TResult orElse(),
  }) {
    if (generateQris != null) {
      return generateQris(orderId, grossAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQris value) generateQris,
    required TResult Function(_CheckQrisStatus value) checkQrisStatus,
    required TResult Function(_CancelQris value) cancelQris,
  }) {
    return generateQris(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQris value)? generateQris,
    TResult? Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult? Function(_CancelQris value)? cancelQris,
  }) {
    return generateQris?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQris value)? generateQris,
    TResult Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult Function(_CancelQris value)? cancelQris,
    required TResult orElse(),
  }) {
    if (generateQris != null) {
      return generateQris(this);
    }
    return orElse();
  }
}

abstract class _GenerateQris implements QrisEvent {
  const factory _GenerateQris(final String orderId, final int grossAmount) =
      _$GenerateQrisImpl;

  String get orderId;
  int get grossAmount;
  @JsonKey(ignore: true)
  _$$GenerateQrisImplCopyWith<_$GenerateQrisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckQrisStatusImplCopyWith<$Res> {
  factory _$$CheckQrisStatusImplCopyWith(_$CheckQrisStatusImpl value,
          $Res Function(_$CheckQrisStatusImpl) then) =
      __$$CheckQrisStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$CheckQrisStatusImplCopyWithImpl<$Res>
    extends _$QrisEventCopyWithImpl<$Res, _$CheckQrisStatusImpl>
    implements _$$CheckQrisStatusImplCopyWith<$Res> {
  __$$CheckQrisStatusImplCopyWithImpl(
      _$CheckQrisStatusImpl _value, $Res Function(_$CheckQrisStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CheckQrisStatusImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckQrisStatusImpl implements _CheckQrisStatus {
  const _$CheckQrisStatusImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'QrisEvent.checkQrisStatus(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckQrisStatusImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckQrisStatusImplCopyWith<_$CheckQrisStatusImpl> get copyWith =>
      __$$CheckQrisStatusImplCopyWithImpl<_$CheckQrisStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQris,
    required TResult Function(String orderId) checkQrisStatus,
    required TResult Function(String orderId) cancelQris,
  }) {
    return checkQrisStatus(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQris,
    TResult? Function(String orderId)? checkQrisStatus,
    TResult? Function(String orderId)? cancelQris,
  }) {
    return checkQrisStatus?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQris,
    TResult Function(String orderId)? checkQrisStatus,
    TResult Function(String orderId)? cancelQris,
    required TResult orElse(),
  }) {
    if (checkQrisStatus != null) {
      return checkQrisStatus(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQris value) generateQris,
    required TResult Function(_CheckQrisStatus value) checkQrisStatus,
    required TResult Function(_CancelQris value) cancelQris,
  }) {
    return checkQrisStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQris value)? generateQris,
    TResult? Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult? Function(_CancelQris value)? cancelQris,
  }) {
    return checkQrisStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQris value)? generateQris,
    TResult Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult Function(_CancelQris value)? cancelQris,
    required TResult orElse(),
  }) {
    if (checkQrisStatus != null) {
      return checkQrisStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckQrisStatus implements QrisEvent {
  const factory _CheckQrisStatus(final String orderId) = _$CheckQrisStatusImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$CheckQrisStatusImplCopyWith<_$CheckQrisStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelQrisImplCopyWith<$Res> {
  factory _$$CancelQrisImplCopyWith(
          _$CancelQrisImpl value, $Res Function(_$CancelQrisImpl) then) =
      __$$CancelQrisImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$CancelQrisImplCopyWithImpl<$Res>
    extends _$QrisEventCopyWithImpl<$Res, _$CancelQrisImpl>
    implements _$$CancelQrisImplCopyWith<$Res> {
  __$$CancelQrisImplCopyWithImpl(
      _$CancelQrisImpl _value, $Res Function(_$CancelQrisImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CancelQrisImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelQrisImpl implements _CancelQris {
  const _$CancelQrisImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'QrisEvent.cancelQris(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelQrisImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelQrisImplCopyWith<_$CancelQrisImpl> get copyWith =>
      __$$CancelQrisImplCopyWithImpl<_$CancelQrisImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String orderId, int grossAmount) generateQris,
    required TResult Function(String orderId) checkQrisStatus,
    required TResult Function(String orderId) cancelQris,
  }) {
    return cancelQris(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String orderId, int grossAmount)? generateQris,
    TResult? Function(String orderId)? checkQrisStatus,
    TResult? Function(String orderId)? cancelQris,
  }) {
    return cancelQris?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String orderId, int grossAmount)? generateQris,
    TResult Function(String orderId)? checkQrisStatus,
    TResult Function(String orderId)? cancelQris,
    required TResult orElse(),
  }) {
    if (cancelQris != null) {
      return cancelQris(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GenerateQris value) generateQris,
    required TResult Function(_CheckQrisStatus value) checkQrisStatus,
    required TResult Function(_CancelQris value) cancelQris,
  }) {
    return cancelQris(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GenerateQris value)? generateQris,
    TResult? Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult? Function(_CancelQris value)? cancelQris,
  }) {
    return cancelQris?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GenerateQris value)? generateQris,
    TResult Function(_CheckQrisStatus value)? checkQrisStatus,
    TResult Function(_CancelQris value)? cancelQris,
    required TResult orElse(),
  }) {
    if (cancelQris != null) {
      return cancelQris(this);
    }
    return orElse();
  }
}

abstract class _CancelQris implements QrisEvent {
  const factory _CancelQris(final String orderId) = _$CancelQrisImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$CancelQrisImplCopyWith<_$CancelQrisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QrisState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrisStateCopyWith<$Res> {
  factory $QrisStateCopyWith(QrisState value, $Res Function(QrisState) then) =
      _$QrisStateCopyWithImpl<$Res, QrisState>;
}

/// @nodoc
class _$QrisStateCopyWithImpl<$Res, $Val extends QrisState>
    implements $QrisStateCopyWith<$Res> {
  _$QrisStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QrisStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QrisState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QrisState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QrisStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'QrisState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QrisState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$QrisResponseImplCopyWith<$Res> {
  factory _$$QrisResponseImplCopyWith(
          _$QrisResponseImpl value, $Res Function(_$QrisResponseImpl) then) =
      __$$QrisResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QrisResponseModel qrisResponseModel});
}

/// @nodoc
class __$$QrisResponseImplCopyWithImpl<$Res>
    extends _$QrisStateCopyWithImpl<$Res, _$QrisResponseImpl>
    implements _$$QrisResponseImplCopyWith<$Res> {
  __$$QrisResponseImplCopyWithImpl(
      _$QrisResponseImpl _value, $Res Function(_$QrisResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrisResponseModel = null,
  }) {
    return _then(_$QrisResponseImpl(
      null == qrisResponseModel
          ? _value.qrisResponseModel
          : qrisResponseModel // ignore: cast_nullable_to_non_nullable
              as QrisResponseModel,
    ));
  }
}

/// @nodoc

class _$QrisResponseImpl implements _QrisResponse {
  const _$QrisResponseImpl(this.qrisResponseModel);

  @override
  final QrisResponseModel qrisResponseModel;

  @override
  String toString() {
    return 'QrisState.qrisResponse(qrisResponseModel: $qrisResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrisResponseImpl &&
            (identical(other.qrisResponseModel, qrisResponseModel) ||
                other.qrisResponseModel == qrisResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qrisResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QrisResponseImplCopyWith<_$QrisResponseImpl> get copyWith =>
      __$$QrisResponseImplCopyWithImpl<_$QrisResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return qrisResponse(qrisResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return qrisResponse?.call(qrisResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (qrisResponse != null) {
      return qrisResponse(qrisResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return qrisResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return qrisResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (qrisResponse != null) {
      return qrisResponse(this);
    }
    return orElse();
  }
}

abstract class _QrisResponse implements QrisState {
  const factory _QrisResponse(final QrisResponseModel qrisResponseModel) =
      _$QrisResponseImpl;

  QrisResponseModel get qrisResponseModel;
  @JsonKey(ignore: true)
  _$$QrisResponseImplCopyWith<_$QrisResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$QrisStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QrisState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements QrisState {
  const factory _Success(final String message) = _$SuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$QrisStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QrisState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QrisResponseModel qrisResponseModel) qrisResponse,
    required TResult Function(String message) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult? Function(String message)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QrisResponseModel qrisResponseModel)? qrisResponse,
    TResult Function(String message)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_QrisResponse value) qrisResponse,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_QrisResponse value)? qrisResponse,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_QrisResponse value)? qrisResponse,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements QrisState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
