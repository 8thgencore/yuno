// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticsReadImpl _$$StatisticsReadImplFromJson(Map<String, dynamic> json) =>
    _$StatisticsReadImpl(
      projectsCount: json['projects_count'] as int,
      missingCount: json['missing_count'] as int,
      ongoingCount: json['ongoing_count'] as int,
      completedCount: json['completed_count'] as int,
    );

Map<String, dynamic> _$$StatisticsReadImplToJson(_$StatisticsReadImpl instance) =>
    <String, dynamic>{
      'projects_count': instance.projectsCount,
      'missing_count': instance.missingCount,
      'ongoing_count': instance.ongoingCount,
      'completed_count': instance.completedCount,
    };
