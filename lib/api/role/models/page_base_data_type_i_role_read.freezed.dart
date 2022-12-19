// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_base_data_type_i_role_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageBaseDataTypeIRoleRead _$PageBaseDataTypeIRoleReadFromJson(
    Map<String, dynamic> json) {
  return _PageBaseDataTypeIRoleRead.fromJson(json);
}

/// @nodoc
mixin _$PageBaseDataTypeIRoleRead {
  List<IRoleRead> get items => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page')
  int? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_page')
  int? get previousPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageBaseDataTypeIRoleReadCopyWith<PageBaseDataTypeIRoleRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageBaseDataTypeIRoleReadCopyWith<$Res> {
  factory $PageBaseDataTypeIRoleReadCopyWith(PageBaseDataTypeIRoleRead value,
          $Res Function(PageBaseDataTypeIRoleRead) then) =
      _$PageBaseDataTypeIRoleReadCopyWithImpl<$Res, PageBaseDataTypeIRoleRead>;
  @useResult
  $Res call(
      {List<IRoleRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class _$PageBaseDataTypeIRoleReadCopyWithImpl<$Res,
        $Val extends PageBaseDataTypeIRoleRead>
    implements $PageBaseDataTypeIRoleReadCopyWith<$Res> {
  _$PageBaseDataTypeIRoleReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? pages = null,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<IRoleRead>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PageBaseDataTypeIRoleReadCopyWith<$Res>
    implements $PageBaseDataTypeIRoleReadCopyWith<$Res> {
  factory _$$_PageBaseDataTypeIRoleReadCopyWith(
          _$_PageBaseDataTypeIRoleRead value,
          $Res Function(_$_PageBaseDataTypeIRoleRead) then) =
      __$$_PageBaseDataTypeIRoleReadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IRoleRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class __$$_PageBaseDataTypeIRoleReadCopyWithImpl<$Res>
    extends _$PageBaseDataTypeIRoleReadCopyWithImpl<$Res,
        _$_PageBaseDataTypeIRoleRead>
    implements _$$_PageBaseDataTypeIRoleReadCopyWith<$Res> {
  __$$_PageBaseDataTypeIRoleReadCopyWithImpl(
      _$_PageBaseDataTypeIRoleRead _value,
      $Res Function(_$_PageBaseDataTypeIRoleRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? size = null,
    Object? pages = null,
    Object? nextPage = freezed,
    Object? previousPage = freezed,
  }) {
    return _then(_$_PageBaseDataTypeIRoleRead(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<IRoleRead>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      previousPage: freezed == previousPage
          ? _value.previousPage
          : previousPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PageBaseDataTypeIRoleRead implements _PageBaseDataTypeIRoleRead {
  const _$_PageBaseDataTypeIRoleRead(
      {required final List<IRoleRead> items,
      required this.total,
      required this.page,
      required this.size,
      required this.pages,
      @JsonKey(name: 'next_page') this.nextPage,
      @JsonKey(name: 'previous_page') this.previousPage})
      : _items = items;

  factory _$_PageBaseDataTypeIRoleRead.fromJson(Map<String, dynamic> json) =>
      _$$_PageBaseDataTypeIRoleReadFromJson(json);

  final List<IRoleRead> _items;
  @override
  List<IRoleRead> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int total;
  @override
  final int page;
  @override
  final int size;
  @override
  final int pages;
  @override
  @JsonKey(name: 'next_page')
  final int? nextPage;
  @override
  @JsonKey(name: 'previous_page')
  final int? previousPage;

  @override
  String toString() {
    return 'PageBaseDataTypeIRoleRead(items: $items, total: $total, page: $page, size: $size, pages: $pages, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageBaseDataTypeIRoleRead &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) ||
                other.previousPage == previousPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      total,
      page,
      size,
      pages,
      nextPage,
      previousPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageBaseDataTypeIRoleReadCopyWith<_$_PageBaseDataTypeIRoleRead>
      get copyWith => __$$_PageBaseDataTypeIRoleReadCopyWithImpl<
          _$_PageBaseDataTypeIRoleRead>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageBaseDataTypeIRoleReadToJson(
      this,
    );
  }
}

abstract class _PageBaseDataTypeIRoleRead implements PageBaseDataTypeIRoleRead {
  const factory _PageBaseDataTypeIRoleRead(
          {required final List<IRoleRead> items,
          required final int total,
          required final int page,
          required final int size,
          required final int pages,
          @JsonKey(name: 'next_page') final int? nextPage,
          @JsonKey(name: 'previous_page') final int? previousPage}) =
      _$_PageBaseDataTypeIRoleRead;

  factory _PageBaseDataTypeIRoleRead.fromJson(Map<String, dynamic> json) =
      _$_PageBaseDataTypeIRoleRead.fromJson;

  @override
  List<IRoleRead> get items;
  @override
  int get total;
  @override
  int get page;
  @override
  int get size;
  @override
  int get pages;
  @override
  @JsonKey(name: 'next_page')
  int? get nextPage;
  @override
  @JsonKey(name: 'previous_page')
  int? get previousPage;
  @override
  @JsonKey(ignore: true)
  _$$_PageBaseDataTypeIRoleReadCopyWith<_$_PageBaseDataTypeIRoleRead>
      get copyWith => throw _privateConstructorUsedError;
}
