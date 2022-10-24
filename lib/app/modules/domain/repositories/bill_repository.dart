import 'package:app/app/core/error/failure.dart';
import 'package:app/app/modules/domain/entities/bill_entity.dart';
import 'package:dartz/dartz.dart';

abstract class BillRepository {
  Future<Either<Failure, bool>> save(BillEntity billEntity);
}