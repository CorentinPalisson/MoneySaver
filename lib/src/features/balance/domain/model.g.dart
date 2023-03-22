// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BalanceModel _$$_BalanceModelFromJson(Map<String, dynamic> json) =>
    _$_BalanceModel(
      current: (json['current'] as num).toDouble(),
      init: (json['init'] as num).toDouble(),
      forecast: (json['forecast'] as num).toDouble(),
      last: (json['last'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BalanceModelToJson(_$_BalanceModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'init': instance.init,
      'forecast': instance.forecast,
      'last': instance.last,
    };
