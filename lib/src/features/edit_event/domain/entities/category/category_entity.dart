import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.g.dart';

@JsonSerializable()
class CategoryEntity {
  const CategoryEntity({
    required this.categoryName,
    required this.estimatedExpense,
  });

  @JsonKey(name: 'category_name')
  final String categoryName;

  @JsonKey(name: 'estimated_expense')
  final double estimatedExpense;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);
}
