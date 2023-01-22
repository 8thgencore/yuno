// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_base_data_type_i_project_with_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageBaseDataTypeIProjectWithUsers
    _$$_PageBaseDataTypeIProjectWithUsersFromJson(Map<String, dynamic> json) =>
        _$_PageBaseDataTypeIProjectWithUsers(
          items: (json['items'] as List<dynamic>)
              .map((e) => IProjectWithUsers.fromJson(e as Map<String, dynamic>))
              .toList(),
          total: json['total'] as int,
          page: json['page'] as int,
          size: json['size'] as int,
          pages: json['pages'] as int,
          nextPage: json['next_page'] as int?,
          previousPage: json['previous_page'] as int?,
        );

Map<String, dynamic> _$$_PageBaseDataTypeIProjectWithUsersToJson(
        _$_PageBaseDataTypeIProjectWithUsers instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
