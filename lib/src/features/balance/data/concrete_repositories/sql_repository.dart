import 'package:sqflite/sqflite.dart';

import '../../domain/model.dart';
import '../repository.dart';

class BalanceSQLRepository implements BalanceRepository {
  BalanceSQLRepository(this.database);
  Database database;

  final String balance = 'balance';
  final String columnDate = 'date';
  final String columnInit = 'init';
  final String columnCurrent = 'current';
  final String columnForecast = 'forecast';
  final String columnLast = 'last';

  @override
  Future<Balance> fetch(int year, int month) async {
    List<Map<String, dynamic>> maps = await database.query(balance,
        columns: [
          columnDate,
          columnInit,
          columnCurrent,
          columnForecast,
          columnLast
        ],
        where: '$columnDate = ?',
        whereArgs: [year * 100 + month]);
    if (maps.isNotEmpty) {
      return Balance.fromJson(maps.first);
    }
    return const Balance(current: 0, last: 0, forecast: 0, init: 0);
  }
}
