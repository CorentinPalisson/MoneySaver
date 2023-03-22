import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as p;

import '../../features/balance/domain/model.dart';

part 'data_connection.g.dart';

@Riverpod(keepAlive: true)
class DataConnectionController extends _$DataConnectionController {
  @override
  Future<DataConnection> build() async {
    final connection = SqlConnection();
    await connection.init();
    return connection;
  }
}

abstract class DataConnection {}

class DioConnection implements DataConnection {
  DioConnection({
    required this.dio,
    required this.baseUrl,
  });
  Dio dio;
  String baseUrl;
}

class SqlConnection implements DataConnection {
  SqlConnection();
  late Database database;
  bool initialized = false;

  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    String path = p.join(databasesPath, 'money_saver.db');
    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE balance (date INTEGER PRIMARY KEY, init REAL, current REAL, forecast REAL, last REAL)');
      var entry =
          const Balance(current: 3500, forecast: 3100, init: 3600, last: 0)
              .toJson();
      entry['date'] = DateTime.now().year * 100 + DateTime.now().month;
      await db.insert('balance', entry);
    });
    initialized = true;
  }
}
