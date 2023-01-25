// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_paginated_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagePaginatedModel<T> _$PagePaginatedModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PagePaginatedModel<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      pages: json['pages'] as int,
      nextPage: json['next_page'] as int?,
      previousPage: json['previous_page'] as int?,
    );

Map<String, dynamic> _$PagePaginatedModelToJson<T>(
  PagePaginatedModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
