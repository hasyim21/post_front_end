// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VoucherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherEventCopyWith<$Res> {
  factory $VoucherEventCopyWith(
          VoucherEvent value, $Res Function(VoucherEvent) then) =
      _$VoucherEventCopyWithImpl<$Res, VoucherEvent>;
}

/// @nodoc
class _$VoucherEventCopyWithImpl<$Res, $Val extends VoucherEvent>
    implements $VoucherEventCopyWith<$Res> {
  _$VoucherEventCopyWithImpl(this._value, this._then);

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
    extends _$VoucherEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'VoucherEvent.started()';
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
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
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
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements VoucherEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddVoucherImplCopyWith<$Res> {
  factory _$$AddVoucherImplCopyWith(
          _$AddVoucherImpl value, $Res Function(_$AddVoucherImpl) then) =
      __$$AddVoucherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoucherModel voucher});
}

/// @nodoc
class __$$AddVoucherImplCopyWithImpl<$Res>
    extends _$VoucherEventCopyWithImpl<$Res, _$AddVoucherImpl>
    implements _$$AddVoucherImplCopyWith<$Res> {
  __$$AddVoucherImplCopyWithImpl(
      _$AddVoucherImpl _value, $Res Function(_$AddVoucherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
  }) {
    return _then(_$AddVoucherImpl(
      null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as VoucherModel,
    ));
  }
}

/// @nodoc

class _$AddVoucherImpl implements _AddVoucher {
  const _$AddVoucherImpl(this.voucher);

  @override
  final VoucherModel voucher;

  @override
  String toString() {
    return 'VoucherEvent.addVoucher(voucher: $voucher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVoucherImpl &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddVoucherImplCopyWith<_$AddVoucherImpl> get copyWith =>
      __$$AddVoucherImplCopyWithImpl<_$AddVoucherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return addVoucher(voucher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return addVoucher?.call(voucher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (addVoucher != null) {
      return addVoucher(voucher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return addVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return addVoucher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (addVoucher != null) {
      return addVoucher(this);
    }
    return orElse();
  }
}

abstract class _AddVoucher implements VoucherEvent {
  const factory _AddVoucher(final VoucherModel voucher) = _$AddVoucherImpl;

  VoucherModel get voucher;
  @JsonKey(ignore: true)
  _$$AddVoucherImplCopyWith<_$AddVoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVouchersImplCopyWith<$Res> {
  factory _$$GetVouchersImplCopyWith(
          _$GetVouchersImpl value, $Res Function(_$GetVouchersImpl) then) =
      __$$GetVouchersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetVouchersImplCopyWithImpl<$Res>
    extends _$VoucherEventCopyWithImpl<$Res, _$GetVouchersImpl>
    implements _$$GetVouchersImplCopyWith<$Res> {
  __$$GetVouchersImplCopyWithImpl(
      _$GetVouchersImpl _value, $Res Function(_$GetVouchersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetVouchersImpl implements _GetVouchers {
  const _$GetVouchersImpl();

  @override
  String toString() {
    return 'VoucherEvent.getVouchers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetVouchersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return getVouchers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return getVouchers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (getVouchers != null) {
      return getVouchers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return getVouchers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return getVouchers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (getVouchers != null) {
      return getVouchers(this);
    }
    return orElse();
  }
}

abstract class _GetVouchers implements VoucherEvent {
  const factory _GetVouchers() = _$GetVouchersImpl;
}

/// @nodoc
abstract class _$$UseVoucherImplCopyWith<$Res> {
  factory _$$UseVoucherImplCopyWith(
          _$UseVoucherImpl value, $Res Function(_$UseVoucherImpl) then) =
      __$$UseVoucherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VoucherModel voucher, int originalPrice});
}

/// @nodoc
class __$$UseVoucherImplCopyWithImpl<$Res>
    extends _$VoucherEventCopyWithImpl<$Res, _$UseVoucherImpl>
    implements _$$UseVoucherImplCopyWith<$Res> {
  __$$UseVoucherImplCopyWithImpl(
      _$UseVoucherImpl _value, $Res Function(_$UseVoucherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
    Object? originalPrice = null,
  }) {
    return _then(_$UseVoucherImpl(
      null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as VoucherModel,
      null == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UseVoucherImpl implements _UseVoucher {
  const _$UseVoucherImpl(this.voucher, this.originalPrice);

  @override
  final VoucherModel voucher;
  @override
  final int originalPrice;

  @override
  String toString() {
    return 'VoucherEvent.useVoucher(voucher: $voucher, originalPrice: $originalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UseVoucherImpl &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher, originalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UseVoucherImplCopyWith<_$UseVoucherImpl> get copyWith =>
      __$$UseVoucherImplCopyWithImpl<_$UseVoucherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return useVoucher(voucher, originalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return useVoucher?.call(voucher, originalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (useVoucher != null) {
      return useVoucher(voucher, originalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return useVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return useVoucher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (useVoucher != null) {
      return useVoucher(this);
    }
    return orElse();
  }
}

abstract class _UseVoucher implements VoucherEvent {
  const factory _UseVoucher(
      final VoucherModel voucher, final int originalPrice) = _$UseVoucherImpl;

  VoucherModel get voucher;
  int get originalPrice;
  @JsonKey(ignore: true)
  _$$UseVoucherImplCopyWith<_$UseVoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteVoucherImplCopyWith<$Res> {
  factory _$$DeleteVoucherImplCopyWith(
          _$DeleteVoucherImpl value, $Res Function(_$DeleteVoucherImpl) then) =
      __$$DeleteVoucherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteVoucherImplCopyWithImpl<$Res>
    extends _$VoucherEventCopyWithImpl<$Res, _$DeleteVoucherImpl>
    implements _$$DeleteVoucherImplCopyWith<$Res> {
  __$$DeleteVoucherImplCopyWithImpl(
      _$DeleteVoucherImpl _value, $Res Function(_$DeleteVoucherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteVoucherImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteVoucherImpl implements _DeleteVoucher {
  const _$DeleteVoucherImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'VoucherEvent.deleteVoucher(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteVoucherImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteVoucherImplCopyWith<_$DeleteVoucherImpl> get copyWith =>
      __$$DeleteVoucherImplCopyWithImpl<_$DeleteVoucherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return deleteVoucher(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return deleteVoucher?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (deleteVoucher != null) {
      return deleteVoucher(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return deleteVoucher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return deleteVoucher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (deleteVoucher != null) {
      return deleteVoucher(this);
    }
    return orElse();
  }
}

abstract class _DeleteVoucher implements VoucherEvent {
  const factory _DeleteVoucher(final int id) = _$DeleteVoucherImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteVoucherImplCopyWith<_$DeleteVoucherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExpiredVouchersImplCopyWith<$Res> {
  factory _$$DeleteExpiredVouchersImplCopyWith(
          _$DeleteExpiredVouchersImpl value,
          $Res Function(_$DeleteExpiredVouchersImpl) then) =
      __$$DeleteExpiredVouchersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteExpiredVouchersImplCopyWithImpl<$Res>
    extends _$VoucherEventCopyWithImpl<$Res, _$DeleteExpiredVouchersImpl>
    implements _$$DeleteExpiredVouchersImplCopyWith<$Res> {
  __$$DeleteExpiredVouchersImplCopyWithImpl(_$DeleteExpiredVouchersImpl _value,
      $Res Function(_$DeleteExpiredVouchersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteExpiredVouchersImpl implements _DeleteExpiredVouchers {
  const _$DeleteExpiredVouchersImpl();

  @override
  String toString() {
    return 'VoucherEvent.deleteExpiredVouchers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExpiredVouchersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(VoucherModel voucher) addVoucher,
    required TResult Function() getVouchers,
    required TResult Function(VoucherModel voucher, int originalPrice)
        useVoucher,
    required TResult Function(int id) deleteVoucher,
    required TResult Function() deleteExpiredVouchers,
  }) {
    return deleteExpiredVouchers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(VoucherModel voucher)? addVoucher,
    TResult? Function()? getVouchers,
    TResult? Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult? Function(int id)? deleteVoucher,
    TResult? Function()? deleteExpiredVouchers,
  }) {
    return deleteExpiredVouchers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(VoucherModel voucher)? addVoucher,
    TResult Function()? getVouchers,
    TResult Function(VoucherModel voucher, int originalPrice)? useVoucher,
    TResult Function(int id)? deleteVoucher,
    TResult Function()? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (deleteExpiredVouchers != null) {
      return deleteExpiredVouchers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddVoucher value) addVoucher,
    required TResult Function(_GetVouchers value) getVouchers,
    required TResult Function(_UseVoucher value) useVoucher,
    required TResult Function(_DeleteVoucher value) deleteVoucher,
    required TResult Function(_DeleteExpiredVouchers value)
        deleteExpiredVouchers,
  }) {
    return deleteExpiredVouchers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddVoucher value)? addVoucher,
    TResult? Function(_GetVouchers value)? getVouchers,
    TResult? Function(_UseVoucher value)? useVoucher,
    TResult? Function(_DeleteVoucher value)? deleteVoucher,
    TResult? Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
  }) {
    return deleteExpiredVouchers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddVoucher value)? addVoucher,
    TResult Function(_GetVouchers value)? getVouchers,
    TResult Function(_UseVoucher value)? useVoucher,
    TResult Function(_DeleteVoucher value)? deleteVoucher,
    TResult Function(_DeleteExpiredVouchers value)? deleteExpiredVouchers,
    required TResult orElse(),
  }) {
    if (deleteExpiredVouchers != null) {
      return deleteExpiredVouchers(this);
    }
    return orElse();
  }
}

abstract class _DeleteExpiredVouchers implements VoucherEvent {
  const factory _DeleteExpiredVouchers() = _$DeleteExpiredVouchersImpl;
}

/// @nodoc
mixin _$VoucherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherStateCopyWith<$Res> {
  factory $VoucherStateCopyWith(
          VoucherState value, $Res Function(VoucherState) then) =
      _$VoucherStateCopyWithImpl<$Res, VoucherState>;
}

/// @nodoc
class _$VoucherStateCopyWithImpl<$Res, $Val extends VoucherState>
    implements $VoucherStateCopyWith<$Res> {
  _$VoucherStateCopyWithImpl(this._value, this._then);

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
    extends _$VoucherStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'VoucherState.initial()';
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
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
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
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VoucherState {
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
    extends _$VoucherStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'VoucherState.loading()';
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
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
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
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VoucherState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VoucherModel> vouchers});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$VoucherStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vouchers = null,
  }) {
    return _then(_$SuccessImpl(
      null == vouchers
          ? _value._vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<VoucherModel> vouchers) : _vouchers = vouchers;

  final List<VoucherModel> _vouchers;
  @override
  List<VoucherModel> get vouchers {
    if (_vouchers is EqualUnmodifiableListView) return _vouchers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vouchers);
  }

  @override
  String toString() {
    return 'VoucherState.success(vouchers: $vouchers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._vouchers, _vouchers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_vouchers));

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
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) {
    return success(vouchers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) {
    return success?.call(vouchers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(vouchers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements VoucherState {
  const factory _Success(final List<VoucherModel> vouchers) = _$SuccessImpl;

  List<VoucherModel> get vouchers;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoucherResultImplCopyWith<$Res> {
  factory _$$VoucherResultImplCopyWith(
          _$VoucherResultImpl value, $Res Function(_$VoucherResultImpl) then) =
      __$$VoucherResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, int discount, int finalPrice});
}

/// @nodoc
class __$$VoucherResultImplCopyWithImpl<$Res>
    extends _$VoucherStateCopyWithImpl<$Res, _$VoucherResultImpl>
    implements _$$VoucherResultImplCopyWith<$Res> {
  __$$VoucherResultImplCopyWithImpl(
      _$VoucherResultImpl _value, $Res Function(_$VoucherResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? discount = null,
    Object? finalPrice = null,
  }) {
    return _then(_$VoucherResultImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
      null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$VoucherResultImpl implements _VoucherResult {
  const _$VoucherResultImpl(this.message, this.discount, this.finalPrice);

  @override
  final String message;
  @override
  final int discount;
  @override
  final int finalPrice;

  @override
  String toString() {
    return 'VoucherState.voucherResult(message: $message, discount: $discount, finalPrice: $finalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherResultImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, discount, finalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherResultImplCopyWith<_$VoucherResultImpl> get copyWith =>
      __$$VoucherResultImplCopyWithImpl<_$VoucherResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) {
    return voucherResult(message, discount, finalPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) {
    return voucherResult?.call(message, discount, finalPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (voucherResult != null) {
      return voucherResult(message, discount, finalPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) {
    return voucherResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) {
    return voucherResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (voucherResult != null) {
      return voucherResult(this);
    }
    return orElse();
  }
}

abstract class _VoucherResult implements VoucherState {
  const factory _VoucherResult(
          final String message, final int discount, final int finalPrice) =
      _$VoucherResultImpl;

  String get message;
  int get discount;
  int get finalPrice;
  @JsonKey(ignore: true)
  _$$VoucherResultImplCopyWith<_$VoucherResultImpl> get copyWith =>
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
    extends _$VoucherStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'VoucherState.error(message: $message)';
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
    required TResult Function(List<VoucherModel> vouchers) success,
    required TResult Function(String message, int discount, int finalPrice)
        voucherResult,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<VoucherModel> vouchers)? success,
    TResult? Function(String message, int discount, int finalPrice)?
        voucherResult,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<VoucherModel> vouchers)? success,
    TResult Function(String message, int discount, int finalPrice)?
        voucherResult,
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
    required TResult Function(_Success value) success,
    required TResult Function(_VoucherResult value) voucherResult,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_VoucherResult value)? voucherResult,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_VoucherResult value)? voucherResult,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements VoucherState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
