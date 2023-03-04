// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_read.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsRead _$$_StatisticsReadFromJson(Map<String, dynamic> json) => _$_StatisticsRead(
      projectsCount: json['projects_count'] as int,
      missingCount: json['missing_count'] as int,
      ongoingCount: json['ongoing_count'] as int,
      completedCount: json['completed_count'] as int,
    );

Map<String, dynamic> _$$_StatisticsReadToJson(_$_StatisticsRead instance) => <String, dynamic>{
      'projects_count': instance.projectsCount,
      'missing_count': instance.missingCount,
      'ongoing_count': instance.ongoingCount,
      'completed_count': instance.completedCount,
    };
