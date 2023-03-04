import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_read.freezed.dart';
part 'statistics_read.g.dart';

@Freezed()
class StatisticsRead with _$StatisticsRead {
  const factory StatisticsRead({
    @JsonKey(name: 'projects_count') required int projectsCount,
    @JsonKey(name: 'missing_count') required int missingCount,
    @JsonKey(name: 'ongoing_count') required int ongoingCount,
    @JsonKey(name: 'completed_count') required int completedCount,
  }) = _StatisticsRead;

  factory StatisticsRead.fromJson(Map<String, dynamic> json) => _$StatisticsReadFromJson(json);
}
