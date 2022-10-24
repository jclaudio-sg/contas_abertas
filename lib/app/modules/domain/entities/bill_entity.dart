import 'package:app/app/core/helpers/status_enum.dart';
import 'package:app/app/modules/domain/entities/category_entity.dart';

class BillEntity {
  final int? id;
  final CategoryEntity? categoryEntity;
  final String? title;
  final String? description;
  final double? value;
  final String? createdAt;
  final String? dueDate;
  final StatusEnum? statusEnum;
  final String? observation;
  final String? repeatType;
  final bool? repeat;
  final double? amountPaid;
  final String? payDay;

  BillEntity({
    this.id,
    this.categoryEntity,
    this.title,
    this.description,
    this.value,
    this.createdAt,
    this.dueDate,
    this.statusEnum,
    this.observation,
    this.repeatType,
    this.repeat,
    this.amountPaid,
    this.payDay,
  });
}