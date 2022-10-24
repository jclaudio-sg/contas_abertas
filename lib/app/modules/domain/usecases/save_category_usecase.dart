import 'package:app/app/core/error/failure.dart';
import 'package:app/app/core/helpers/message.dart';
import 'package:app/app/modules/domain/entities/category_entity.dart';
import 'package:app/app/modules/domain/repositories/category_repository.dart';
import 'package:dartz/dartz.dart';

abstract class SaveCategoryUseCase {
  Future<Either<Failure, bool>> call(CategoryEntity categoryEntity);
}

class SaveCategoryUseCaseImpl implements SaveCategoryUseCase {

  final CategoryaRepository repository;

  SaveCategoryUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> call(CategoryEntity categoryEntity) async {
    if ( categoryEntity.isNullTitle() ) {
      return Left( AppFailure( message: Message.MSG_CATEGORY_TITLE_ISNULL ) );
    }
    if ( categoryEntity.isNullDescription() ) {
      return Left( AppFailure( message: Message.MSG_CATEGORY_DESCRIPTION_ISNULL ) );
    }
    return repository.save(categoryEntity);
  }

}