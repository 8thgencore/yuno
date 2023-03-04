// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedDataIUserRead _$$_PaginatedDataIUserReadFromJson(Map<String, dynamic> json) =>
    _$_PaginatedDataIUserRead(
      items: (json['items'] as List<dynamic>)
          .map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      pages: json['pages'] as int,
      nextPage: json['next_page'] as int?,
      previousPage: json['previous_page'] as int?,
    );

Map<String, dynamic> _$$_PaginatedDataIUserReadToJson(_$_PaginatedDataIUserRead instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
