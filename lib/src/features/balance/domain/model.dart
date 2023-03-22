import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.g.dart';
part 'model.freezed.dart';

@freezed
class Balance with _$Balance {
  const factory Balance({
    required double current,
    required double init,
    required double forecast,
    required double last,
  }) = _BalanceModel;

  factory Balance.fromJson(Map<String, dynamic> json) =>
      _$BalanceFromJson(json);
}
