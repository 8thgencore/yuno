// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_project_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDataIProjectWithUsersImpl
    _$$PaginatedDataIProjectWithUsersImplFromJson(Map<String, dynamic> json) =>
        _$PaginatedDataIProjectWithUsersImpl(
          items: (json['items'] as List<dynamic>)
              .map((e) => IProjectWithUsers.fromJson(e as Map<String, dynamic>))
              .toList(),
          total: (json['total'] as num).toInt(),
          page: (json['page'] as num).toInt(),
          size: (json['size'] as num).toInt(),
          pages: (json['pages'] as num).toInt(),
          nextPage: (json['next_page'] as num?)?.toInt(),
          previousPage: (json['previous_page'] as num?)?.toInt(),
        );

Map<String, dynamic> _$$PaginatedDataIProjectWithUsersImplToJson(
        _$PaginatedDataIProjectWithUsersImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
