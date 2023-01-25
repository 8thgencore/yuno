import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_paginated_model.freezed.dart';

part 'page_paginated_model.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class PagePaginatedModel<T> with _$PagePaginatedModel<T> {
  const factory PagePaginatedModel({
    required List<T> items,
    required int total,
    required int page,
    required int size,
    required int pages,
    @JsonKey(name: 'next_page') int? nextPage,
    @JsonKey(name: 'previous_page') int? previousPage,
  }) = _PagePaginatedModel;

  factory PagePaginatedModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$PagePaginatedModelFromJson<T>(json, fromJsonT);
  }
}
