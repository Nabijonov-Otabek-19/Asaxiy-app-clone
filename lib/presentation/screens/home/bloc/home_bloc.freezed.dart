// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOffers,
    required TResult Function() loadProducts,
    required TResult Function(int index) changeDotIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOffers,
    TResult? Function()? loadProducts,
    TResult? Function(int index)? changeDotIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOffers,
    TResult Function()? loadProducts,
    TResult Function(int index)? changeDotIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOffers value) loadOffers,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChangeIndex value) changeDotIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOffers value)? loadOffers,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChangeIndex value)? changeDotIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOffers value)? loadOffers,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChangeIndex value)? changeDotIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadOffersCopyWith<$Res> {
  factory _$$_LoadOffersCopyWith(
          _$_LoadOffers value, $Res Function(_$_LoadOffers) then) =
      __$$_LoadOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadOffersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_LoadOffers>
    implements _$$_LoadOffersCopyWith<$Res> {
  __$$_LoadOffersCopyWithImpl(
      _$_LoadOffers _value, $Res Function(_$_LoadOffers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadOffers implements _LoadOffers {
  const _$_LoadOffers();

  @override
  String toString() {
    return 'HomeEvent.loadOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOffers,
    required TResult Function() loadProducts,
    required TResult Function(int index) changeDotIndex,
  }) {
    return loadOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOffers,
    TResult? Function()? loadProducts,
    TResult? Function(int index)? changeDotIndex,
  }) {
    return loadOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOffers,
    TResult Function()? loadProducts,
    TResult Function(int index)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (loadOffers != null) {
      return loadOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOffers value) loadOffers,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChangeIndex value) changeDotIndex,
  }) {
    return loadOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOffers value)? loadOffers,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChangeIndex value)? changeDotIndex,
  }) {
    return loadOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOffers value)? loadOffers,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChangeIndex value)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (loadOffers != null) {
      return loadOffers(this);
    }
    return orElse();
  }
}

abstract class _LoadOffers implements HomeEvent {
  const factory _LoadOffers() = _$_LoadOffers;
}

/// @nodoc
abstract class _$$_LoadProductsCopyWith<$Res> {
  factory _$$_LoadProductsCopyWith(
          _$_LoadProducts value, $Res Function(_$_LoadProducts) then) =
      __$$_LoadProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadProductsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_LoadProducts>
    implements _$$_LoadProductsCopyWith<$Res> {
  __$$_LoadProductsCopyWithImpl(
      _$_LoadProducts _value, $Res Function(_$_LoadProducts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadProducts implements _LoadProducts {
  const _$_LoadProducts();

  @override
  String toString() {
    return 'HomeEvent.loadProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOffers,
    required TResult Function() loadProducts,
    required TResult Function(int index) changeDotIndex,
  }) {
    return loadProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOffers,
    TResult? Function()? loadProducts,
    TResult? Function(int index)? changeDotIndex,
  }) {
    return loadProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOffers,
    TResult Function()? loadProducts,
    TResult Function(int index)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOffers value) loadOffers,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChangeIndex value) changeDotIndex,
  }) {
    return loadProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOffers value)? loadOffers,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChangeIndex value)? changeDotIndex,
  }) {
    return loadProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOffers value)? loadOffers,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChangeIndex value)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (loadProducts != null) {
      return loadProducts(this);
    }
    return orElse();
  }
}

abstract class _LoadProducts implements HomeEvent {
  const factory _LoadProducts() = _$_LoadProducts;
}

/// @nodoc
abstract class _$$_ChangeIndexCopyWith<$Res> {
  factory _$$_ChangeIndexCopyWith(
          _$_ChangeIndex value, $Res Function(_$_ChangeIndex) then) =
      __$$_ChangeIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_ChangeIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ChangeIndex>
    implements _$$_ChangeIndexCopyWith<$Res> {
  __$$_ChangeIndexCopyWithImpl(
      _$_ChangeIndex _value, $Res Function(_$_ChangeIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangeIndex(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeIndex implements _ChangeIndex {
  const _$_ChangeIndex(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeDotIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeIndexCopyWith<_$_ChangeIndex> get copyWith =>
      __$$_ChangeIndexCopyWithImpl<_$_ChangeIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOffers,
    required TResult Function() loadProducts,
    required TResult Function(int index) changeDotIndex,
  }) {
    return changeDotIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOffers,
    TResult? Function()? loadProducts,
    TResult? Function(int index)? changeDotIndex,
  }) {
    return changeDotIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOffers,
    TResult Function()? loadProducts,
    TResult Function(int index)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (changeDotIndex != null) {
      return changeDotIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadOffers value) loadOffers,
    required TResult Function(_LoadProducts value) loadProducts,
    required TResult Function(_ChangeIndex value) changeDotIndex,
  }) {
    return changeDotIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadOffers value)? loadOffers,
    TResult? Function(_LoadProducts value)? loadProducts,
    TResult? Function(_ChangeIndex value)? changeDotIndex,
  }) {
    return changeDotIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadOffers value)? loadOffers,
    TResult Function(_LoadProducts value)? loadProducts,
    TResult Function(_ChangeIndex value)? changeDotIndex,
    required TResult orElse(),
  }) {
    if (changeDotIndex != null) {
      return changeDotIndex(this);
    }
    return orElse();
  }
}

abstract class _ChangeIndex implements HomeEvent {
  const factory _ChangeIndex(final int index) = _$_ChangeIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$_ChangeIndexCopyWith<_$_ChangeIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<OfferModel> get offerList => throw _privateConstructorUsedError;
  List<ProductModel> get productList => throw _privateConstructorUsedError;
  int get activeIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Status status,
            String error,
            List<OfferModel> offerList,
            List<ProductModel> productList,
            int activeIndex)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Status status, String error, List<OfferModel> offerList,
            List<ProductModel> productList, int activeIndex)?
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, String error, List<OfferModel> offerList,
            List<ProductModel> productList, int activeIndex)?
        state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Status status,
      String error,
      List<OfferModel> offerList,
      List<ProductModel> productList,
      int activeIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? offerList = null,
    Object? productList = null,
    Object? activeIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      offerList: null == offerList
          ? _value.offerList
          : offerList // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      String error,
      List<OfferModel> offerList,
      List<ProductModel> productList,
      int activeIndex});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? offerList = null,
    Object? productList = null,
    Object? activeIndex = null,
  }) {
    return _then(_$_State(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      offerList: null == offerList
          ? _value._offerList
          : offerList // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      activeIndex: null == activeIndex
          ? _value.activeIndex
          : activeIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(
      {this.status = Status.LOADING,
      this.error = "",
      final List<OfferModel> offerList = const [],
      final List<ProductModel> productList = const [],
      this.activeIndex = 0})
      : _offerList = offerList,
        _productList = productList;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String error;
  final List<OfferModel> _offerList;
  @override
  @JsonKey()
  List<OfferModel> get offerList {
    if (_offerList is EqualUnmodifiableListView) return _offerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offerList);
  }

  final List<ProductModel> _productList;
  @override
  @JsonKey()
  List<ProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final int activeIndex;

  @override
  String toString() {
    return 'HomeState.state(status: $status, error: $error, offerList: $offerList, productList: $productList, activeIndex: $activeIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._offerList, _offerList) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.activeIndex, activeIndex) ||
                other.activeIndex == activeIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      const DeepCollectionEquality().hash(_offerList),
      const DeepCollectionEquality().hash(_productList),
      activeIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Status status,
            String error,
            List<OfferModel> offerList,
            List<ProductModel> productList,
            int activeIndex)
        state,
  }) {
    return state(status, error, offerList, productList, activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Status status, String error, List<OfferModel> offerList,
            List<ProductModel> productList, int activeIndex)?
        state,
  }) {
    return state?.call(status, error, offerList, productList, activeIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Status status, String error, List<OfferModel> offerList,
            List<ProductModel> productList, int activeIndex)?
        state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(status, error, offerList, productList, activeIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements HomeState {
  const factory _State(
      {final Status status,
      final String error,
      final List<OfferModel> offerList,
      final List<ProductModel> productList,
      final int activeIndex}) = _$_State;

  @override
  Status get status;
  @override
  String get error;
  @override
  List<OfferModel> get offerList;
  @override
  List<ProductModel> get productList;
  @override
  int get activeIndex;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
