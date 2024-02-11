// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_coordinates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCoordinates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(LocationData locationData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(LocationData locationData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(LocationData locationData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value) $default, {
    required TResult Function(GetCoordinatesSuccessful value) successful,
    required TResult Function(GetCoordinatesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCoordinatesStart value)? $default, {
    TResult? Function(GetCoordinatesSuccessful value)? successful,
    TResult? Function(GetCoordinatesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value)? $default, {
    TResult Function(GetCoordinatesSuccessful value)? successful,
    TResult Function(GetCoordinatesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCoordinatesCopyWith<$Res> {
  factory $GetCoordinatesCopyWith(
          GetCoordinates value, $Res Function(GetCoordinates) then) =
      _$GetCoordinatesCopyWithImpl<$Res, GetCoordinates>;
}

/// @nodoc
class _$GetCoordinatesCopyWithImpl<$Res, $Val extends GetCoordinates>
    implements $GetCoordinatesCopyWith<$Res> {
  _$GetCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCoordinatesStartImplCopyWith<$Res> {
  factory _$$GetCoordinatesStartImplCopyWith(_$GetCoordinatesStartImpl value,
          $Res Function(_$GetCoordinatesStartImpl) then) =
      __$$GetCoordinatesStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$GetCoordinatesStartImplCopyWithImpl<$Res>
    extends _$GetCoordinatesCopyWithImpl<$Res, _$GetCoordinatesStartImpl>
    implements _$$GetCoordinatesStartImplCopyWith<$Res> {
  __$$GetCoordinatesStartImplCopyWithImpl(_$GetCoordinatesStartImpl _value,
      $Res Function(_$GetCoordinatesStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$GetCoordinatesStartImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCoordinatesStartImpl implements GetCoordinatesStart {
  const _$GetCoordinatesStartImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'GetCoordinates(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoordinatesStartImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCoordinatesStartImplCopyWith<_$GetCoordinatesStartImpl> get copyWith =>
      __$$GetCoordinatesStartImplCopyWithImpl<_$GetCoordinatesStartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(LocationData locationData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(LocationData locationData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(LocationData locationData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value) $default, {
    required TResult Function(GetCoordinatesSuccessful value) successful,
    required TResult Function(GetCoordinatesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCoordinatesStart value)? $default, {
    TResult? Function(GetCoordinatesSuccessful value)? successful,
    TResult? Function(GetCoordinatesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value)? $default, {
    TResult Function(GetCoordinatesSuccessful value)? successful,
    TResult Function(GetCoordinatesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCoordinatesStart implements GetCoordinates {
  const factory GetCoordinatesStart(final String query) =
      _$GetCoordinatesStartImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$GetCoordinatesStartImplCopyWith<_$GetCoordinatesStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCoordinatesSuccessfulImplCopyWith<$Res> {
  factory _$$GetCoordinatesSuccessfulImplCopyWith(
          _$GetCoordinatesSuccessfulImpl value,
          $Res Function(_$GetCoordinatesSuccessfulImpl) then) =
      __$$GetCoordinatesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocationData locationData});

  $LocationDataCopyWith<$Res> get locationData;
}

/// @nodoc
class __$$GetCoordinatesSuccessfulImplCopyWithImpl<$Res>
    extends _$GetCoordinatesCopyWithImpl<$Res, _$GetCoordinatesSuccessfulImpl>
    implements _$$GetCoordinatesSuccessfulImplCopyWith<$Res> {
  __$$GetCoordinatesSuccessfulImplCopyWithImpl(
      _$GetCoordinatesSuccessfulImpl _value,
      $Res Function(_$GetCoordinatesSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
  }) {
    return _then(_$GetCoordinatesSuccessfulImpl(
      null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get locationData {
    return $LocationDataCopyWith<$Res>(_value.locationData, (value) {
      return _then(_value.copyWith(locationData: value));
    });
  }
}

/// @nodoc

class _$GetCoordinatesSuccessfulImpl implements GetCoordinatesSuccessful {
  const _$GetCoordinatesSuccessfulImpl(this.locationData);

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'GetCoordinates.successful(locationData: $locationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoordinatesSuccessfulImpl &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCoordinatesSuccessfulImplCopyWith<_$GetCoordinatesSuccessfulImpl>
      get copyWith => __$$GetCoordinatesSuccessfulImplCopyWithImpl<
          _$GetCoordinatesSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(LocationData locationData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(locationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(LocationData locationData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(locationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(LocationData locationData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(locationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value) $default, {
    required TResult Function(GetCoordinatesSuccessful value) successful,
    required TResult Function(GetCoordinatesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCoordinatesStart value)? $default, {
    TResult? Function(GetCoordinatesSuccessful value)? successful,
    TResult? Function(GetCoordinatesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value)? $default, {
    TResult Function(GetCoordinatesSuccessful value)? successful,
    TResult Function(GetCoordinatesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCoordinatesSuccessful implements GetCoordinates {
  const factory GetCoordinatesSuccessful(final LocationData locationData) =
      _$GetCoordinatesSuccessfulImpl;

  LocationData get locationData;
  @JsonKey(ignore: true)
  _$$GetCoordinatesSuccessfulImplCopyWith<_$GetCoordinatesSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCoordinatesErrorImplCopyWith<$Res> {
  factory _$$GetCoordinatesErrorImplCopyWith(_$GetCoordinatesErrorImpl value,
          $Res Function(_$GetCoordinatesErrorImpl) then) =
      __$$GetCoordinatesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCoordinatesErrorImplCopyWithImpl<$Res>
    extends _$GetCoordinatesCopyWithImpl<$Res, _$GetCoordinatesErrorImpl>
    implements _$$GetCoordinatesErrorImplCopyWith<$Res> {
  __$$GetCoordinatesErrorImplCopyWithImpl(_$GetCoordinatesErrorImpl _value,
      $Res Function(_$GetCoordinatesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCoordinatesErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCoordinatesErrorImpl implements GetCoordinatesError {
  const _$GetCoordinatesErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCoordinates.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCoordinatesErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCoordinatesErrorImplCopyWith<_$GetCoordinatesErrorImpl> get copyWith =>
      __$$GetCoordinatesErrorImplCopyWithImpl<_$GetCoordinatesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String query) $default, {
    required TResult Function(LocationData locationData) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String query)? $default, {
    TResult? Function(LocationData locationData)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String query)? $default, {
    TResult Function(LocationData locationData)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value) $default, {
    required TResult Function(GetCoordinatesSuccessful value) successful,
    required TResult Function(GetCoordinatesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCoordinatesStart value)? $default, {
    TResult? Function(GetCoordinatesSuccessful value)? successful,
    TResult? Function(GetCoordinatesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCoordinatesStart value)? $default, {
    TResult Function(GetCoordinatesSuccessful value)? successful,
    TResult Function(GetCoordinatesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCoordinatesError implements GetCoordinates, ErrorAction {
  const factory GetCoordinatesError(
          final Object error, final StackTrace stackTrace) =
      _$GetCoordinatesErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCoordinatesErrorImplCopyWith<_$GetCoordinatesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
