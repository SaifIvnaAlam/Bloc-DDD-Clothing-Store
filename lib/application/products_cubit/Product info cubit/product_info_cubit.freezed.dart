// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products produtsbyId) productLoaded,
    required TResult Function() productLoading,
    required TResult Function(String massage) productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products produtsbyId)? productLoaded,
    TResult? Function()? productLoading,
    TResult? Function(String massage)? productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products produtsbyId)? productLoaded,
    TResult Function()? productLoading,
    TResult Function(String massage)? productError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoadedState value) productLoaded,
    required TResult Function(_ProductLoadingState value) productLoading,
    required TResult Function(_ProductErrordState value) productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoadedState value)? productLoaded,
    TResult? Function(_ProductLoadingState value)? productLoading,
    TResult? Function(_ProductErrordState value)? productError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoadedState value)? productLoaded,
    TResult Function(_ProductLoadingState value)? productLoading,
    TResult Function(_ProductErrordState value)? productError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInfoStateCopyWith<$Res> {
  factory $ProductInfoStateCopyWith(
          ProductInfoState value, $Res Function(ProductInfoState) then) =
      _$ProductInfoStateCopyWithImpl<$Res, ProductInfoState>;
}

/// @nodoc
class _$ProductInfoStateCopyWithImpl<$Res, $Val extends ProductInfoState>
    implements $ProductInfoStateCopyWith<$Res> {
  _$ProductInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ProductLoadedStateCopyWith<$Res> {
  factory _$$_ProductLoadedStateCopyWith(_$_ProductLoadedState value,
          $Res Function(_$_ProductLoadedState) then) =
      __$$_ProductLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Products produtsbyId});

  $ProductsCopyWith<$Res> get produtsbyId;
}

/// @nodoc
class __$$_ProductLoadedStateCopyWithImpl<$Res>
    extends _$ProductInfoStateCopyWithImpl<$Res, _$_ProductLoadedState>
    implements _$$_ProductLoadedStateCopyWith<$Res> {
  __$$_ProductLoadedStateCopyWithImpl(
      _$_ProductLoadedState _value, $Res Function(_$_ProductLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produtsbyId = null,
  }) {
    return _then(_$_ProductLoadedState(
      null == produtsbyId
          ? _value.produtsbyId
          : produtsbyId // ignore: cast_nullable_to_non_nullable
              as Products,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res> get produtsbyId {
    return $ProductsCopyWith<$Res>(_value.produtsbyId, (value) {
      return _then(_value.copyWith(produtsbyId: value));
    });
  }
}

/// @nodoc

class _$_ProductLoadedState implements _ProductLoadedState {
  const _$_ProductLoadedState(this.produtsbyId);

  @override
  final Products produtsbyId;

  @override
  String toString() {
    return 'ProductInfoState.productLoaded(produtsbyId: $produtsbyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductLoadedState &&
            (identical(other.produtsbyId, produtsbyId) ||
                other.produtsbyId == produtsbyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produtsbyId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductLoadedStateCopyWith<_$_ProductLoadedState> get copyWith =>
      __$$_ProductLoadedStateCopyWithImpl<_$_ProductLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products produtsbyId) productLoaded,
    required TResult Function() productLoading,
    required TResult Function(String massage) productError,
  }) {
    return productLoaded(produtsbyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products produtsbyId)? productLoaded,
    TResult? Function()? productLoading,
    TResult? Function(String massage)? productError,
  }) {
    return productLoaded?.call(produtsbyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products produtsbyId)? productLoaded,
    TResult Function()? productLoading,
    TResult Function(String massage)? productError,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(produtsbyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoadedState value) productLoaded,
    required TResult Function(_ProductLoadingState value) productLoading,
    required TResult Function(_ProductErrordState value) productError,
  }) {
    return productLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoadedState value)? productLoaded,
    TResult? Function(_ProductLoadingState value)? productLoading,
    TResult? Function(_ProductErrordState value)? productError,
  }) {
    return productLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoadedState value)? productLoaded,
    TResult Function(_ProductLoadingState value)? productLoading,
    TResult Function(_ProductErrordState value)? productError,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProductLoadedState implements ProductInfoState {
  const factory _ProductLoadedState(final Products produtsbyId) =
      _$_ProductLoadedState;

  Products get produtsbyId;
  @JsonKey(ignore: true)
  _$$_ProductLoadedStateCopyWith<_$_ProductLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ProductLoadingStateCopyWith<$Res> {
  factory _$$_ProductLoadingStateCopyWith(_$_ProductLoadingState value,
          $Res Function(_$_ProductLoadingState) then) =
      __$$_ProductLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProductLoadingStateCopyWithImpl<$Res>
    extends _$ProductInfoStateCopyWithImpl<$Res, _$_ProductLoadingState>
    implements _$$_ProductLoadingStateCopyWith<$Res> {
  __$$_ProductLoadingStateCopyWithImpl(_$_ProductLoadingState _value,
      $Res Function(_$_ProductLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ProductLoadingState implements _ProductLoadingState {
  const _$_ProductLoadingState();

  @override
  String toString() {
    return 'ProductInfoState.productLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProductLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products produtsbyId) productLoaded,
    required TResult Function() productLoading,
    required TResult Function(String massage) productError,
  }) {
    return productLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products produtsbyId)? productLoaded,
    TResult? Function()? productLoading,
    TResult? Function(String massage)? productError,
  }) {
    return productLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products produtsbyId)? productLoaded,
    TResult Function()? productLoading,
    TResult Function(String massage)? productError,
    required TResult orElse(),
  }) {
    if (productLoading != null) {
      return productLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoadedState value) productLoaded,
    required TResult Function(_ProductLoadingState value) productLoading,
    required TResult Function(_ProductErrordState value) productError,
  }) {
    return productLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoadedState value)? productLoaded,
    TResult? Function(_ProductLoadingState value)? productLoading,
    TResult? Function(_ProductErrordState value)? productError,
  }) {
    return productLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoadedState value)? productLoaded,
    TResult Function(_ProductLoadingState value)? productLoading,
    TResult Function(_ProductErrordState value)? productError,
    required TResult orElse(),
  }) {
    if (productLoading != null) {
      return productLoading(this);
    }
    return orElse();
  }
}

abstract class _ProductLoadingState implements ProductInfoState {
  const factory _ProductLoadingState() = _$_ProductLoadingState;
}

/// @nodoc
abstract class _$$_ProductErrordStateCopyWith<$Res> {
  factory _$$_ProductErrordStateCopyWith(_$_ProductErrordState value,
          $Res Function(_$_ProductErrordState) then) =
      __$$_ProductErrordStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String massage});
}

/// @nodoc
class __$$_ProductErrordStateCopyWithImpl<$Res>
    extends _$ProductInfoStateCopyWithImpl<$Res, _$_ProductErrordState>
    implements _$$_ProductErrordStateCopyWith<$Res> {
  __$$_ProductErrordStateCopyWithImpl(
      _$_ProductErrordState _value, $Res Function(_$_ProductErrordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? massage = null,
  }) {
    return _then(_$_ProductErrordState(
      null == massage
          ? _value.massage
          : massage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProductErrordState implements _ProductErrordState {
  const _$_ProductErrordState(this.massage);

  @override
  final String massage;

  @override
  String toString() {
    return 'ProductInfoState.productError(massage: $massage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductErrordState &&
            (identical(other.massage, massage) || other.massage == massage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, massage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductErrordStateCopyWith<_$_ProductErrordState> get copyWith =>
      __$$_ProductErrordStateCopyWithImpl<_$_ProductErrordState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Products produtsbyId) productLoaded,
    required TResult Function() productLoading,
    required TResult Function(String massage) productError,
  }) {
    return productError(massage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Products produtsbyId)? productLoaded,
    TResult? Function()? productLoading,
    TResult? Function(String massage)? productError,
  }) {
    return productError?.call(massage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Products produtsbyId)? productLoaded,
    TResult Function()? productLoading,
    TResult Function(String massage)? productError,
    required TResult orElse(),
  }) {
    if (productError != null) {
      return productError(massage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductLoadedState value) productLoaded,
    required TResult Function(_ProductLoadingState value) productLoading,
    required TResult Function(_ProductErrordState value) productError,
  }) {
    return productError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductLoadedState value)? productLoaded,
    TResult? Function(_ProductLoadingState value)? productLoading,
    TResult? Function(_ProductErrordState value)? productError,
  }) {
    return productError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductLoadedState value)? productLoaded,
    TResult Function(_ProductLoadingState value)? productLoading,
    TResult Function(_ProductErrordState value)? productError,
    required TResult orElse(),
  }) {
    if (productError != null) {
      return productError(this);
    }
    return orElse();
  }
}

abstract class _ProductErrordState implements ProductInfoState {
  const factory _ProductErrordState(final String massage) =
      _$_ProductErrordState;

  String get massage;
  @JsonKey(ignore: true)
  _$$_ProductErrordStateCopyWith<_$_ProductErrordState> get copyWith =>
      throw _privateConstructorUsedError;
}
