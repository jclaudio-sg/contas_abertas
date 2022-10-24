class CategoryEntity {
  final int? id;
  final String? title;
  final String? description;

  CategoryEntity({
    this.id,
    this.title,
    this.description
  });

  bool isNullTitle() => ( title == null || title == "" );

  bool isNullDescription() => ( description == null || description == "" );

}