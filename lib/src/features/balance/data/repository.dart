import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/connection/data_connection.dart';
import '../domain/model.dart';
import 'concrete_repositories/dio_repository.dart';
import 'concrete_repositories/pending_repositories.dart';
import 'concrete_repositories/sql_repository.dart';

part 'repository.g.dart';

@riverpod
BalanceRepository balanceRepository(BalanceRepositoryRef ref) {
  final dataConnection = ref.watch(dataConnectionControllerProvider);
  return dataConnection.when(
      data: (dataConnection) => BalanceRepository(dataConnection),
      loading: () => BalanceRepository.loadingRepository(),
      error: (_, __) => BalanceRepository.errorRepository());
}

abstract class BalanceRepository {
  factory BalanceRepository(DataConnection dataConnection) {
    late BalanceRepository repository;
    if (dataConnection is DioConnection) {
      repository = BalanceDioRepository(dataConnection.dio,
          baseUrl: dataConnection.baseUrl);
    }
    if (dataConnection is SqlConnection) {
      repository = BalanceSQLRepository(dataConnection.database);
    }
    return repository;
  }
  static BalanceRepository loadingRepository() {
    return BalanceLoadingRepository();
  }

  static BalanceRepository errorRepository() {
    return BalanceErrorRepository();
  }

  Future<Balance> fetch(int year, int month);
}
