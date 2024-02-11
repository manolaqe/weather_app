// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetForecast {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ForecastWeather forecastWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(ForecastWeather forecastWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ForecastWeather forecastWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetForecastStart value) $default, {
    required TResult Function(GetForecastSuccessful value) successful,
    required TResult Function(GetForecastError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetForecastStart value)? $default, {
    TResult? Function(GetForecastSuccessful value)? successful,
    TResult? Function(GetForecastError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetForecastStart value)? $default, {
    TResult Function(GetForecastSuccessful value)? successful,
    TResult Function(GetForecastError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetForecastCopyWith<$Res> {
  factory $GetForecastCopyWith(
          GetForecast value, $Res Function(GetForecast) then) =
      _$GetForecastCopyWithImpl<$Res, GetForecast>;
}

/// @nodoc
class _$GetForecastCopyWithImpl<$Res, $Val extends GetForecast>
    implements $GetForecastCopyWith<$Res> {
  _$GetForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetForecastStartImplCopyWith<$Res> {
  factory _$$GetForecastStartImplCopyWith(_$GetForecastStartImpl value,
          $Res Function(_$GetForecastStartImpl) then) =
      __$$GetForecastStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetForecastStartImplCopyWithImpl<$Res>
    extends _$GetForecastCopyWithImpl<$Res, _$GetForecastStartImpl>
    implements _$$GetForecastStartImplCopyWith<$Res> {
  __$$GetForecastStartImplCopyWithImpl(_$GetForecastStartImpl _value,
      $Res Function(_$GetForecastStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetForecastStartImpl implements GetForecastStart {
  const _$GetForecastStartImpl();

  @override
  String toString() {
    return 'GetForecast()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetForecastStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ForecastWeather forecastWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(ForecastWeather forecastWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ForecastWeather forecastWeather)? successful,
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
    TResult Function(GetForecastStart value) $default, {
    required TResult Function(GetForecastSuccessful value) successful,
    required TResult Function(GetForecastError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetForecastStart value)? $default, {
    TResult? Function(GetForecastSuccessful value)? successful,
    TResult? Function(GetForecastError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetForecastStart value)? $default, {
    TResult Function(GetForecastSuccessful value)? successful,
    TResult Function(GetForecastError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetForecastStart implements GetForecast {
  const factory GetForecastStart() = _$GetForecastStartImpl;
}

/// @nodoc
abstract class _$$GetForecastSuccessfulImplCopyWith<$Res> {
  factory _$$GetForecastSuccessfulImplCopyWith(
          _$GetForecastSuccessfulImpl value,
          $Res Function(_$GetForecastSuccessfulImpl) then) =
      __$$GetForecastSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ForecastWeather forecastWeather});

  $ForecastWeatherCopyWith<$Res> get forecastWeather;
}

/// @nodoc
class __$$GetForecastSuccessfulImplCopyWithImpl<$Res>
    extends _$GetForecastCopyWithImpl<$Res, _$GetForecastSuccessfulImpl>
    implements _$$GetForecastSuccessfulImplCopyWith<$Res> {
  __$$GetForecastSuccessfulImplCopyWithImpl(_$GetForecastSuccessfulImpl _value,
      $Res Function(_$GetForecastSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forecastWeather = null,
  }) {
    return _then(_$GetForecastSuccessfulImpl(
      null == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as ForecastWeather,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ForecastWeatherCopyWith<$Res> get forecastWeather {
    return $ForecastWeatherCopyWith<$Res>(_value.forecastWeather, (value) {
      return _then(_value.copyWith(forecastWeather: value));
    });
  }
}

/// @nodoc

class _$GetForecastSuccessfulImpl implements GetForecastSuccessful {
  const _$GetForecastSuccessfulImpl(this.forecastWeather);

  @override
  final ForecastWeather forecastWeather;

  @override
  String toString() {
    return 'GetForecast.successful(forecastWeather: $forecastWeather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForecastSuccessfulImpl &&
            (identical(other.forecastWeather, forecastWeather) ||
                other.forecastWeather == forecastWeather));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forecastWeather);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForecastSuccessfulImplCopyWith<_$GetForecastSuccessfulImpl>
      get copyWith => __$$GetForecastSuccessfulImplCopyWithImpl<
          _$GetForecastSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ForecastWeather forecastWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(forecastWeather);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(ForecastWeather forecastWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(forecastWeather);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ForecastWeather forecastWeather)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(forecastWeather);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetForecastStart value) $default, {
    required TResult Function(GetForecastSuccessful value) successful,
    required TResult Function(GetForecastError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetForecastStart value)? $default, {
    TResult? Function(GetForecastSuccessful value)? successful,
    TResult? Function(GetForecastError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetForecastStart value)? $default, {
    TResult Function(GetForecastSuccessful value)? successful,
    TResult Function(GetForecastError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetForecastSuccessful implements GetForecast {
  const factory GetForecastSuccessful(final ForecastWeather forecastWeather) =
      _$GetForecastSuccessfulImpl;

  ForecastWeather get forecastWeather;
  @JsonKey(ignore: true)
  _$$GetForecastSuccessfulImplCopyWith<_$GetForecastSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetForecastErrorImplCopyWith<$Res> {
  factory _$$GetForecastErrorImplCopyWith(_$GetForecastErrorImpl value,
          $Res Function(_$GetForecastErrorImpl) then) =
      __$$GetForecastErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetForecastErrorImplCopyWithImpl<$Res>
    extends _$GetForecastCopyWithImpl<$Res, _$GetForecastErrorImpl>
    implements _$$GetForecastErrorImplCopyWith<$Res> {
  __$$GetForecastErrorImplCopyWithImpl(_$GetForecastErrorImpl _value,
      $Res Function(_$GetForecastErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetForecastErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetForecastErrorImpl implements GetForecastError {
  const _$GetForecastErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetForecast.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForecastErrorImpl &&
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
  _$$GetForecastErrorImplCopyWith<_$GetForecastErrorImpl> get copyWith =>
      __$$GetForecastErrorImplCopyWithImpl<_$GetForecastErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(ForecastWeather forecastWeather) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(ForecastWeather forecastWeather)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(ForecastWeather forecastWeather)? successful,
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
    TResult Function(GetForecastStart value) $default, {
    required TResult Function(GetForecastSuccessful value) successful,
    required TResult Function(GetForecastError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetForecastStart value)? $default, {
    TResult? Function(GetForecastSuccessful value)? successful,
    TResult? Function(GetForecastError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetForecastStart value)? $default, {
    TResult Function(GetForecastSuccessful value)? successful,
    TResult Function(GetForecastError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetForecastError implements GetForecast, ErrorAction {
  const factory GetForecastError(
      final Object error, final StackTrace stackTrace) = _$GetForecastErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$GetForecastErrorImplCopyWith<_$GetForecastErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
