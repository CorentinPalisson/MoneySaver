// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Balance _$BalanceFromJson(Map<String, dynamic> json) {
  return _BalanceModel.fromJson(json);
}

/// @nodoc
mixin _$Balance {
  double get current => throw _privateConstructorUsedError;
  double get init => throw _privateConstructorUsedError;
  double get forecast => throw _privateConstructorUsedError;
  double get last => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BalanceCopyWith<Balance> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceCopyWith<$Res> {
  factory $BalanceCopyWith(Balance value, $Res Function(Balance) then) =
      _$BalanceCopyWithImpl<$Res, Balance>;
  @useResult
  $Res call({double current, double init, double forecast, double last});
}

/// @nodoc
class _$BalanceCopyWithImpl<$Res, $Val extends Balance>
    implements $BalanceCopyWith<$Res> {
  _$BalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? init = null,
    Object? forecast = null,
    Object? last = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as double,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as double,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BalanceModelCopyWith<$Res>
    implements $BalanceCopyWith<$Res> {
  factory _$$_BalanceModelCopyWith(
          _$_BalanceModel value, $Res Function(_$_BalanceModel) then) =
      __$$_BalanceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double current, double init, double forecast, double last});
}

/// @nodoc
class __$$_BalanceModelCopyWithImpl<$Res>
    extends _$BalanceCopyWithImpl<$Res, _$_BalanceModel>
    implements _$$_BalanceModelCopyWith<$Res> {
  __$$_BalanceModelCopyWithImpl(
      _$_BalanceModel _value, $Res Function(_$_BalanceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? init = null,
    Object? forecast = null,
    Object? last = null,
  }) {
    return _then(_$_BalanceModel(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as double,
      forecast: null == forecast
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as double,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BalanceModel implements _BalanceModel {
  const _$_BalanceModel(
      {required this.current,
      required this.init,
      required this.forecast,
      required this.last});

  factory _$_BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$$_BalanceModelFromJson(json);

  @override
  final double current;
  @override
  final double init;
  @override
  final double forecast;
  @override
  final double last;

  @override
  String toString() {
    return 'Balance(current: $current, init: $init, forecast: $forecast, last: $last)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceModel &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.init, init) || other.init == init) &&
            (identical(other.forecast, forecast) ||
                other.forecast == forecast) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, init, forecast, last);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      __$$_BalanceModelCopyWithImpl<_$_BalanceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BalanceModelToJson(
      this,
    );
  }
}

abstract class _BalanceModel implements Balance {
  const factory _BalanceModel(
      {required final double current,
      required final double init,
      required final double forecast,
      required final double last}) = _$_BalanceModel;

  factory _BalanceModel.fromJson(Map<String, dynamic> json) =
      _$_BalanceModel.fromJson;

  @override
  double get current;
  @override
  double get init;
  @override
  double get forecast;
  @override
  double get last;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceModelCopyWith<_$_BalanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
