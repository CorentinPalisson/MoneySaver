import 'package:dio/dio.dart';
import 'package:money_saver/src/features/balance/data/repository.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../domain/model.dart';

part 'dio_repository.g.dart';

@RestApi()
abstract class BalanceDioRepository extends BalanceRepository {
  factory BalanceDioRepository(Dio dio, {String baseUrl}) =
      _BalanceDioRepository;

  @override
  @GET('/month')
  Future<Balance> fetch(@Query('year') int year, @Query('month') int month);
}
