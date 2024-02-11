// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetLocation {
  LocationData get locationData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetLocationCopyWith<SetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetLocationCopyWith<$Res> {
  factory $SetLocationCopyWith(
          SetLocation value, $Res Function(SetLocation) then) =
      _$SetLocationCopyWithImpl<$Res, SetLocation>;
  @useResult
  $Res call({LocationData locationData});

  $LocationDataCopyWith<$Res> get locationData;
}

/// @nodoc
class _$SetLocationCopyWithImpl<$Res, $Val extends SetLocation>
    implements $SetLocationCopyWith<$Res> {
  _$SetLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
  }) {
    return _then(_value.copyWith(
      locationData: null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res> get locationData {
    return $LocationDataCopyWith<$Res>(_value.locationData, (value) {
      return _then(_value.copyWith(locationData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetLocation$ImplCopyWith<$Res>
    implements $SetLocationCopyWith<$Res> {
  factory _$$SetLocation$ImplCopyWith(
          _$SetLocation$Impl value, $Res Function(_$SetLocation$Impl) then) =
      __$$SetLocation$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationData locationData});

  @override
  $LocationDataCopyWith<$Res> get locationData;
}

/// @nodoc
class __$$SetLocation$ImplCopyWithImpl<$Res>
    extends _$SetLocationCopyWithImpl<$Res, _$SetLocation$Impl>
    implements _$$SetLocation$ImplCopyWith<$Res> {
  __$$SetLocation$ImplCopyWithImpl(
      _$SetLocation$Impl _value, $Res Function(_$SetLocation$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locationData = null,
  }) {
    return _then(_$SetLocation$Impl(
      null == locationData
          ? _value.locationData
          : locationData // ignore: cast_nullable_to_non_nullable
              as LocationData,
    ));
  }
}

/// @nodoc

class _$SetLocation$Impl implements SetLocation$ {
  const _$SetLocation$Impl(this.locationData);

  @override
  final LocationData locationData;

  @override
  String toString() {
    return 'SetLocation(locationData: $locationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocation$Impl &&
            (identical(other.locationData, locationData) ||
                other.locationData == locationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locationData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocation$ImplCopyWith<_$SetLocation$Impl> get copyWith =>
      __$$SetLocation$ImplCopyWithImpl<_$SetLocation$Impl>(this, _$identity);
}

abstract class SetLocation$ implements SetLocation {
  const factory SetLocation$(final LocationData locationData) =
      _$SetLocation$Impl;

  @override
  LocationData get locationData;
  @override
  @JsonKey(ignore: true)
  _$$SetLocation$ImplCopyWith<_$SetLocation$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
