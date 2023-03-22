import '../../domain/model.dart';
import '../repository.dart';

class BalanceLoadingRepository implements BalanceRepository {
  BalanceLoadingRepository();

  @override
  Future<Balance> fetch(int year, int month) async {
    return const Balance(current: 0, forecast: 0, init: 0, last: 0);
  }
}

class BalanceErrorRepository implements BalanceRepository {
  BalanceErrorRepository();

  @override
  Future<Balance> fetch(int year, int month) async {
    return const Balance(
        current: 99999, forecast: 99999, init: 99999, last: 99999);
  }
}
