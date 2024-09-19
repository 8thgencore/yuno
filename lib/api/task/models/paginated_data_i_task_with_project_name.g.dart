// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_task_with_project_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDataITaskWithProjectNameImpl
    _$$PaginatedDataITaskWithProjectNameImplFromJson(
            Map<String, dynamic> json) =>
        _$PaginatedDataITaskWithProjectNameImpl(
          items: (json['items'] as List<dynamic>)
              .map((e) =>
                  ITaskWithProjectName.fromJson(e as Map<String, dynamic>))
              .toList(),
          total: (json['total'] as num).toInt(),
          page: (json['page'] as num).toInt(),
          size: (json['size'] as num).toInt(),
          pages: (json['pages'] as num).toInt(),
          nextPage: (json['next_page'] as num?)?.toInt(),
          previousPage: (json['previous_page'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$PaginatedDataITaskWithProjectNameImplToJson(
        _$PaginatedDataITaskWithProjectNameImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
