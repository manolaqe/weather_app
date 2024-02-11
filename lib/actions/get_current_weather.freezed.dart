// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCurrentWeather {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value) $default, {
    required TResult Function(GetCurrentWeatherSuccessful value) successful,
    required TResult Function(GetCurrentWeatherError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentWeatherStart value)? $default, {
    TResult? Function(GetCurrentWeatherSuccessful value)? successful,
    TResult? Function(GetCurrentWeatherError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value)? $default, {
    TResult Function(GetCurrentWeatherSuccessful value)? successful,
    TResult Function(GetCurrentWeatherError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCurrentWeatherCopyWith<$Res> {
  factory $GetCurrentWeatherCopyWith(GetCurrentWeather value, $Res Function(GetCurrentWeather) then) =
      _$GetCurrentWeatherCopyWithImpl<$Res, GetCurrentWeather>;
}

/// @nodoc
class _$GetCurrentWeatherCopyWithImpl<$Res, $Val extends GetCurrentWeather>
    implements $GetCurrentWeatherCopyWith<$Res> {
  _$GetCurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentWeatherStartImplCopyWith<$Res> {
  factory _$$GetCurrentWeatherStartImplCopyWith(
          _$GetCurrentWeatherStartImpl value, $Res Function(_$GetCurrentWeatherStartImpl) then) =
      __$$GetCurrentWeatherStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentWeatherStartImplCopyWithImpl<$Res>
    extends _$GetCurrentWeatherCopyWithImpl<$Res, _$GetCurrentWeatherStartImpl>
    implements _$$GetCurrentWeatherStartImplCopyWith<$Res> {
  __$$GetCurrentWeatherStartImplCopyWithImpl(
      _$GetCurrentWeatherStartImpl _value, $Res Function(_$GetCurrentWeatherStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentWeatherStartImpl implements GetCurrentWeatherStart {
  const _$GetCurrentWeatherStartImpl();

  @override
  String toString() {
    return 'GetCurrentWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetCurrentWeatherStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value) $default, {
    required TResult Function(GetCurrentWeatherSuccessful value) successful,
    required TResult Function(GetCurrentWeatherError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentWeatherStart value)? $default, {
    TResult? Function(GetCurrentWeatherSuccessful value)? successful,
    TResult? Function(GetCurrentWeatherError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value)? $default, {
    TResult Function(GetCurrentWeatherSuccessful value)? successful,
    TResult Function(GetCurrentWeatherError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherStart implements GetCurrentWeather {
  const factory GetCurrentWeatherStart() = _$GetCurrentWeatherStartImpl;
}

/// @nodoc
abstract class _$$GetCurrentWeatherSuccessfulImplCopyWith<$Res> {
  factory _$$GetCurrentWeatherSuccessfulImplCopyWith(
          _$GetCurrentWeatherSuccessfulImpl value, $Res Function(_$GetCurrentWeatherSuccessfulImpl) then) =
      __$$GetCurrentWeatherSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrentWeather currentWeather});

  $CurrentWeatherCopyWith<$Res> get currentWeather;
}

/// @nodoc
class __$$GetCurrentWeatherSuccessfulImplCopyWithImpl<$Res>
    extends _$GetCurrentWeatherCopyWithImpl<$Res, _$GetCurrentWeatherSuccessfulImpl>
    implements _$$GetCurrentWeatherSuccessfulImplCopyWith<$Res> {
  __$$GetCurrentWeatherSuccessfulImplCopyWithImpl(
      _$GetCurrentWeatherSuccessfulImpl _value, $Res Function(_$GetCurrentWeatherSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = null,
  }) {
    return _then(_$GetCurrentWeatherSuccessfulImpl(
      null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get currentWeather {
    return $CurrentWeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value));
    });
  }
}

/// @nodoc

class _$GetCurrentWeatherSuccessfulImpl implements GetCurrentWeatherSuccessful {
  const _$GetCurrentWeatherSuccessfulImpl(this.currentWeather);

  @override
  final CurrentWeather currentWeather;

  @override
  String toString() {
    return 'GetCurrentWeather.successful(currentWeather: $currentWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentWeatherSuccessfulImpl &&
            (identical(other.currentWeather, currentWeather) || other.currentWeather == currentWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentWeatherSuccessfulImplCopyWith<_$GetCurrentWeatherSuccessfulImpl> get copyWith =>
      __$$GetCurrentWeatherSuccessfulImplCopyWithImpl<_$GetCurrentWeatherSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(currentWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(currentWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value) $default, {
    required TResult Function(GetCurrentWeatherSuccessful value) successful,
    required TResult Function(GetCurrentWeatherError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentWeatherStart value)? $default, {
    TResult? Function(GetCurrentWeatherSuccessful value)? successful,
    TResult? Function(GetCurrentWeatherError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value)? $default, {
    TResult Function(GetCurrentWeatherSuccessful value)? successful,
    TResult Function(GetCurrentWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherSuccessful implements GetCurrentWeather {
  const factory GetCurrentWeatherSuccessful(final CurrentWeather currentWeather) = _$GetCurrentWeatherSuccessfulImpl;

  CurrentWeather get currentWeather;
  @JsonKey(ignore: true)
  _$$GetCurrentWeatherSuccessfulImplCopyWith<_$GetCurrentWeatherSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCurrentWeatherErrorImplCopyWith<$Res> {
  factory _$$GetCurrentWeatherErrorImplCopyWith(
          _$GetCurrentWeatherErrorImpl value, $Res Function(_$GetCurrentWeatherErrorImpl) then) =
      __$$GetCurrentWeatherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetCurrentWeatherErrorImplCopyWithImpl<$Res>
    extends _$GetCurrentWeatherCopyWithImpl<$Res, _$GetCurrentWeatherErrorImpl>
    implements _$$GetCurrentWeatherErrorImplCopyWith<$Res> {
  __$$GetCurrentWeatherErrorImplCopyWithImpl(
      _$GetCurrentWeatherErrorImpl _value, $Res Function(_$GetCurrentWeatherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetCurrentWeatherErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetCurrentWeatherErrorImpl implements GetCurrentWeatherError {
  const _$GetCurrentWeatherErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetCurrentWeather.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentWeatherErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCurrentWeatherErrorImplCopyWith<_$GetCurrentWeatherErrorImpl> get copyWith =>
      __$$GetCurrentWeatherErrorImplCopyWithImpl<_$GetCurrentWeatherErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(CurrentWeather currentWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(CurrentWeather currentWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(CurrentWeather currentWeather)? successful,
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
    TResult Function(GetCurrentWeatherStart value) $default, {
    required TResult Function(GetCurrentWeatherSuccessful value) successful,
    required TResult Function(GetCurrentWeatherError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetCurrentWeatherStart value)? $default, {
    TResult? Function(GetCurrentWeatherSuccessful value)? successful,
    TResult? Function(GetCurrentWeatherError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetCurrentWeatherStart value)? $default, {
    TResult Function(GetCurrentWeatherSuccessful value)? successful,
    TResult Function(GetCurrentWeatherError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetCurrentWeatherError implements GetCurrentWeather, ErrorAction {
  const factory GetCurrentWeatherError(final Object error, final StackTrace stackTrace) = _$GetCurrentWeatherErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetCurrentWeatherErrorImplCopyWith<_$GetCurrentWeatherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
