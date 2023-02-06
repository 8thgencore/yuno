// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_task_with_project_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedDataITaskWithProjectName _$$_PaginatedDataITaskWithProjectNameFromJson(
        Map<String, dynamic> json) =>
    _$_PaginatedDataITaskWithProjectName(
      items: (json['items'] as List<dynamic>)
          .map((e) => ITaskWithProjectName.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      pages: json['pages'] as int,
      nextPage: json['next_page'] as int?,
      previousPage: json['previous_page'] as int?,
    );

Map<String, dynamic> _$$_PaginatedDataITaskWithProjectNameToJson(
        _$_PaginatedDataITaskWithProjectName instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
