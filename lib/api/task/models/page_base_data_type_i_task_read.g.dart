// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_base_data_type_i_task_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageBaseDataTypeITaskRead _$$_PageBaseDataTypeITaskReadFromJson(
        Map<String, dynamic> json) =>
    _$_PageBaseDataTypeITaskRead(
      items: (json['items'] as List<dynamic>)
          .map((e) => ITaskRead.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      page: json['page'] as int,
      size: json['size'] as int,
      pages: json['pages'] as int,
      nextPage: json['next_page'] as int?,
      previousPage: json['previous_page'] as int?,
    );

Map<String, dynamic> _$$_PageBaseDataTypeITaskReadToJson(
        _$_PageBaseDataTypeITaskRead instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'page': instance.page,
      'size': instance.size,
      'pages': instance.pages,
      'next_page': instance.nextPage,
      'previous_page': instance.previousPage,
    };
