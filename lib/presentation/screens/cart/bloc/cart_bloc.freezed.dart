// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keys, Box<ProductModelDB> items)
        totalSum,
    required TResult Function(int count) totalCount,
    required TResult Function(bool isVisible) changeBNvisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult? Function(int count)? totalCount,
    TResult? Function(bool isVisible)? changeBNvisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult Function(int count)? totalCount,
    TResult Function(bool isVisible)? changeBNvisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TotalSum value) totalSum,
    required TResult Function(_TotalCount value) totalCount,
    required TResult Function(_ChangeBNvisibility value) changeBNvisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TotalSum value)? totalSum,
    TResult? Function(_TotalCount value)? totalCount,
    TResult? Function(_ChangeBNvisibility value)? changeBNvisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TotalSum value)? totalSum,
    TResult Function(_TotalCount value)? totalCount,
    TResult Function(_ChangeBNvisibility value)? changeBNvisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TotalSumCopyWith<$Res> {
  factory _$$_TotalSumCopyWith(
          _$_TotalSum value, $Res Function(_$_TotalSum) then) =
      __$$_TotalSumCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> keys, Box<ProductModelDB> items});
}

/// @nodoc
class __$$_TotalSumCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_TotalSum>
    implements _$$_TotalSumCopyWith<$Res> {
  __$$_TotalSumCopyWithImpl(
      _$_TotalSum _value, $Res Function(_$_TotalSum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
    Object? items = null,
  }) {
    return _then(_$_TotalSum(
      null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Box<ProductModelDB>,
    ));
  }
}

/// @nodoc

class _$_TotalSum implements _TotalSum {
  const _$_TotalSum(final List<int> keys, this.items) : _keys = keys;

  final List<int> _keys;
  @override
  List<int> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  final Box<ProductModelDB> items;

  @override
  String toString() {
    return 'CartEvent.totalSum(keys: $keys, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalSum &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_keys), items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalSumCopyWith<_$_TotalSum> get copyWith =>
      __$$_TotalSumCopyWithImpl<_$_TotalSum>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keys, Box<ProductModelDB> items)
        totalSum,
    required TResult Function(int count) totalCount,
    required TResult Function(bool isVisible) changeBNvisibility,
  }) {
    return totalSum(keys, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult? Function(int count)? totalCount,
    TResult? Function(bool isVisible)? changeBNvisibility,
  }) {
    return totalSum?.call(keys, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult Function(int count)? totalCount,
    TResult Function(bool isVisible)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (totalSum != null) {
      return totalSum(keys, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TotalSum value) totalSum,
    required TResult Function(_TotalCount value) totalCount,
    required TResult Function(_ChangeBNvisibility value) changeBNvisibility,
  }) {
    return totalSum(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TotalSum value)? totalSum,
    TResult? Function(_TotalCount value)? totalCount,
    TResult? Function(_ChangeBNvisibility value)? changeBNvisibility,
  }) {
    return totalSum?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TotalSum value)? totalSum,
    TResult Function(_TotalCount value)? totalCount,
    TResult Function(_ChangeBNvisibility value)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (totalSum != null) {
      return totalSum(this);
    }
    return orElse();
  }
}

abstract class _TotalSum implements CartEvent {
  const factory _TotalSum(
      final List<int> keys, final Box<ProductModelDB> items) = _$_TotalSum;

  List<int> get keys;
  Box<ProductModelDB> get items;
  @JsonKey(ignore: true)
  _$$_TotalSumCopyWith<_$_TotalSum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TotalCountCopyWith<$Res> {
  factory _$$_TotalCountCopyWith(
          _$_TotalCount value, $Res Function(_$_TotalCount) then) =
      __$$_TotalCountCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_TotalCountCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_TotalCount>
    implements _$$_TotalCountCopyWith<$Res> {
  __$$_TotalCountCopyWithImpl(
      _$_TotalCount _value, $Res Function(_$_TotalCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_TotalCount(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TotalCount implements _TotalCount {
  const _$_TotalCount(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'CartEvent.totalCount(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TotalCount &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TotalCountCopyWith<_$_TotalCount> get copyWith =>
      __$$_TotalCountCopyWithImpl<_$_TotalCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keys, Box<ProductModelDB> items)
        totalSum,
    required TResult Function(int count) totalCount,
    required TResult Function(bool isVisible) changeBNvisibility,
  }) {
    return totalCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult? Function(int count)? totalCount,
    TResult? Function(bool isVisible)? changeBNvisibility,
  }) {
    return totalCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult Function(int count)? totalCount,
    TResult Function(bool isVisible)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (totalCount != null) {
      return totalCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TotalSum value) totalSum,
    required TResult Function(_TotalCount value) totalCount,
    required TResult Function(_ChangeBNvisibility value) changeBNvisibility,
  }) {
    return totalCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TotalSum value)? totalSum,
    TResult? Function(_TotalCount value)? totalCount,
    TResult? Function(_ChangeBNvisibility value)? changeBNvisibility,
  }) {
    return totalCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TotalSum value)? totalSum,
    TResult Function(_TotalCount value)? totalCount,
    TResult Function(_ChangeBNvisibility value)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (totalCount != null) {
      return totalCount(this);
    }
    return orElse();
  }
}

abstract class _TotalCount implements CartEvent {
  const factory _TotalCount(final int count) = _$_TotalCount;

  int get count;
  @JsonKey(ignore: true)
  _$$_TotalCountCopyWith<_$_TotalCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeBNvisibilityCopyWith<$Res> {
  factory _$$_ChangeBNvisibilityCopyWith(_$_ChangeBNvisibility value,
          $Res Function(_$_ChangeBNvisibility) then) =
      __$$_ChangeBNvisibilityCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$_ChangeBNvisibilityCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_ChangeBNvisibility>
    implements _$$_ChangeBNvisibilityCopyWith<$Res> {
  __$$_ChangeBNvisibilityCopyWithImpl(
      _$_ChangeBNvisibility _value, $Res Function(_$_ChangeBNvisibility) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$_ChangeBNvisibility(
      null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeBNvisibility implements _ChangeBNvisibility {
  const _$_ChangeBNvisibility(this.isVisible);

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'CartEvent.changeBNvisibility(isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeBNvisibility &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeBNvisibilityCopyWith<_$_ChangeBNvisibility> get copyWith =>
      __$$_ChangeBNvisibilityCopyWithImpl<_$_ChangeBNvisibility>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<int> keys, Box<ProductModelDB> items)
        totalSum,
    required TResult Function(int count) totalCount,
    required TResult Function(bool isVisible) changeBNvisibility,
  }) {
    return changeBNvisibility(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult? Function(int count)? totalCount,
    TResult? Function(bool isVisible)? changeBNvisibility,
  }) {
    return changeBNvisibility?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> keys, Box<ProductModelDB> items)? totalSum,
    TResult Function(int count)? totalCount,
    TResult Function(bool isVisible)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (changeBNvisibility != null) {
      return changeBNvisibility(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TotalSum value) totalSum,
    required TResult Function(_TotalCount value) totalCount,
    required TResult Function(_ChangeBNvisibility value) changeBNvisibility,
  }) {
    return changeBNvisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TotalSum value)? totalSum,
    TResult? Function(_TotalCount value)? totalCount,
    TResult? Function(_ChangeBNvisibility value)? changeBNvisibility,
  }) {
    return changeBNvisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TotalSum value)? totalSum,
    TResult Function(_TotalCount value)? totalCount,
    TResult Function(_ChangeBNvisibility value)? changeBNvisibility,
    required TResult orElse(),
  }) {
    if (changeBNvisibility != null) {
      return changeBNvisibility(this);
    }
    return orElse();
  }
}

abstract class _ChangeBNvisibility implements CartEvent {
  const factory _ChangeBNvisibility(final bool isVisible) =
      _$_ChangeBNvisibility;

  bool get isVisible;
  @JsonKey(ignore: true)
  _$$_ChangeBNvisibilityCopyWith<_$_ChangeBNvisibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  int get totalSum => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get isVisible => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalSum, int totalCount, bool isVisible)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalSum, int totalCount, bool isVisible)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalSum, int totalCount, bool isVisible)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({int totalSum, int totalCount, bool isVisible});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSum = null,
    Object? totalCount = null,
    Object? isVisible = null,
  }) {
    return _then(_value.copyWith(
      totalSum: null == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalSum, int totalCount, bool isVisible});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSum = null,
    Object? totalCount = null,
    Object? isVisible = null,
  }) {
    return _then(_$_Initial(
      totalSum: null == totalSum
          ? _value.totalSum
          : totalSum // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.totalSum = 0, this.totalCount = 0, this.isVisible = false});

  @override
  @JsonKey()
  final int totalSum;
  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final bool isVisible;

  @override
  String toString() {
    return 'CartState.initial(totalSum: $totalSum, totalCount: $totalCount, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.totalSum, totalSum) ||
                other.totalSum == totalSum) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalSum, totalCount, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalSum, int totalCount, bool isVisible)
        initial,
  }) {
    return initial(totalSum, totalCount, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalSum, int totalCount, bool isVisible)? initial,
  }) {
    return initial?.call(totalSum, totalCount, isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalSum, int totalCount, bool isVisible)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(totalSum, totalCount, isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {final int totalSum,
      final int totalCount,
      final bool isVisible}) = _$_Initial;

  @override
  int get totalSum;
  @override
  int get totalCount;
  @override
  bool get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
