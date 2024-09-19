// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_data_i_user_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedDataIUserReadImpl _$$PaginatedDataIUserReadImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedDataIUserReadImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => IUserRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      nextPage: (json['next_page'] as num?)?.toInt(),
      previousPage: (json['previous_page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginatedDataIUserReadImplToJson(
        _$PaginatedDataIUserReadImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
