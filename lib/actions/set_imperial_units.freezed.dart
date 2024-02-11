// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_imperial_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SetImperialUnits {
  bool get imperialUnits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetImperialUnitsCopyWith<SetImperialUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetImperialUnitsCopyWith<$Res> {
  factory $SetImperialUnitsCopyWith(
          SetImperialUnits value, $Res Function(SetImperialUnits) then) =
      _$SetImperialUnitsCopyWithImpl<$Res, SetImperialUnits>;
  @useResult
  $Res call({bool imperialUnits});
}

/// @nodoc
class _$SetImperialUnitsCopyWithImpl<$Res, $Val extends SetImperialUnits>
    implements $SetImperialUnitsCopyWith<$Res> {
  _$SetImperialUnitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperialUnits = null,
  }) {
    return _then(_value.copyWith(
      imperialUnits: null == imperialUnits
          ? _value.imperialUnits
          : imperialUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetImperialUnits$ImplCopyWith<$Res>
    implements $SetImperialUnitsCopyWith<$Res> {
  factory _$$SetImperialUnits$ImplCopyWith(_$SetImperialUnits$Impl value,
          $Res Function(_$SetImperialUnits$Impl) then) =
      __$$SetImperialUnits$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool imperialUnits});
}

/// @nodoc
class __$$SetImperialUnits$ImplCopyWithImpl<$Res>
    extends _$SetImperialUnitsCopyWithImpl<$Res, _$SetImperialUnits$Impl>
    implements _$$SetImperialUnits$ImplCopyWith<$Res> {
  __$$SetImperialUnits$ImplCopyWithImpl(_$SetImperialUnits$Impl _value,
      $Res Function(_$SetImperialUnits$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imperialUnits = null,
  }) {
    return _then(_$SetImperialUnits$Impl(
      null == imperialUnits
          ? _value.imperialUnits
          : imperialUnits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetImperialUnits$Impl implements SetImperialUnits$ {
  const _$SetImperialUnits$Impl(this.imperialUnits);

  @override
  final bool imperialUnits;

  @override
  String toString() {
    return 'SetImperialUnits(imperialUnits: $imperialUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImperialUnits$Impl &&
            (identical(other.imperialUnits, imperialUnits) ||
                other.imperialUnits == imperialUnits));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imperialUnits);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImperialUnits$ImplCopyWith<_$SetImperialUnits$Impl> get copyWith =>
      __$$SetImperialUnits$ImplCopyWithImpl<_$SetImperialUnits$Impl>(
          this, _$identity);
}

abstract class SetImperialUnits$ implements SetImperialUnits {
  const factory SetImperialUnits$(final bool imperialUnits) =
      _$SetImperialUnits$Impl;

  @override
  bool get imperialUnits;
  @override
  @JsonKey(ignore: true)
  _$$SetImperialUnits$ImplCopyWith<_$SetImperialUnits$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
