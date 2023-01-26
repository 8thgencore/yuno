// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_role_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedDataIRoleRead _$$_PaginatedDataIRoleReadFromJson(Map<String, dynamic> json) =>
    _$_PaginatedDataIRoleRead(
      items: (json['items'] as List<dynamic>)
          .map((e) => IRoleRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      pages: json['pages'] as int,
      nextPage: json['next_page'] as int?,
      previousPage: json['previous_page'] as int?,
    );

Map<String, dynamic> _$$_PaginatedDataIRoleReadToJson(_$_PaginatedDataIRoleRead instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
