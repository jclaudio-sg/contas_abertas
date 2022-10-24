import 'package:app/app/core/error/failure.dart';
import 'package:app/app/modules/domain/entities/category_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CategoryaRepository {
  Future<Either<Failure, bool>> save(CategoryEntity categoryEntity);
}