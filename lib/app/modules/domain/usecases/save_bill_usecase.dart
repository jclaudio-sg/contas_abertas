import 'package:app/app/core/error/failure.dart';
import 'package:app/app/modules/domain/entities/bill_entity.dart';
import 'package:app/app/modules/domain/repositories/bill_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SaveBillUseCase {
  Future<Either<Failure, bool>> call(BillEntity billEntity);
}

class SaveBillUseCaseImpl implements SaveBillUseCase {

  final BillRepository repository;

  SaveBillUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> call(BillEntity billEntity) async {
    return await repository.save(billEntity);
  }

}