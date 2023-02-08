import 'package:freezed_annotation/freezed_annotation.dart';

enum IOrderEnum {
  asc,
  desc;

  const IOrderEnum();

  factory IOrderEnum.fromJson(Map<String, dynamic> json) => $enumDecode(_$IOrderEnumEnumMap, json);

  String toJson() => _$IOrderEnumEnumMap[this]!;
}

const _$IOrderEnumEnumMap = {
  IOrderEnum.asc: 'asc',
  IOrderEnum.desc: 'desc',
};
