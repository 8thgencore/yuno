// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data_i_task_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedDataITaskRead _$PaginatedDataITaskReadFromJson(Map<String, dynamic> json) {
  return _PaginatedDataITaskRead.fromJson(json);
}

/// @nodoc
mixin _$PaginatedDataITaskRead {
  List<ITaskRead> get items => throw _privateConstructorUsedError;
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
  $PaginatedDataITaskReadCopyWith<PaginatedDataITaskRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataITaskReadCopyWith<$Res> {
  factory $PaginatedDataITaskReadCopyWith(
          PaginatedDataITaskRead value, $Res Function(PaginatedDataITaskRead) then) =
      _$PaginatedDataITaskReadCopyWithImpl<$Res, PaginatedDataITaskRead>;
  @useResult
  $Res call(
      {List<ITaskRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class _$PaginatedDataITaskReadCopyWithImpl<$Res, $Val extends PaginatedDataITaskRead>
    implements $PaginatedDataITaskReadCopyWith<$Res> {
  _$PaginatedDataITaskReadCopyWithImpl(this._value, this._then);

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
              as List<ITaskRead>,
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
abstract class _$$PaginatedDataITaskReadImplCopyWith<$Res>
    implements $PaginatedDataITaskReadCopyWith<$Res> {
  factory _$$PaginatedDataITaskReadImplCopyWith(
          _$PaginatedDataITaskReadImpl value, $Res Function(_$PaginatedDataITaskReadImpl) then) =
      __$$PaginatedDataITaskReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ITaskRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class __$$PaginatedDataITaskReadImplCopyWithImpl<$Res>
    extends _$PaginatedDataITaskReadCopyWithImpl<$Res, _$PaginatedDataITaskReadImpl>
    implements _$$PaginatedDataITaskReadImplCopyWith<$Res> {
  __$$PaginatedDataITaskReadImplCopyWithImpl(
      _$PaginatedDataITaskReadImpl _value, $Res Function(_$PaginatedDataITaskReadImpl) _then)
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
    return _then(_$PaginatedDataITaskReadImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ITaskRead>,
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
class _$PaginatedDataITaskReadImpl implements _PaginatedDataITaskRead {
  const _$PaginatedDataITaskReadImpl(
      {required final List<ITaskRead> items,
      required this.total,
      required this.page,
      required this.size,
      required this.pages,
      @JsonKey(name: 'next_page') this.nextPage,
      @JsonKey(name: 'previous_page') this.previousPage})
      : _items = items;

  factory _$PaginatedDataITaskReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDataITaskReadImplFromJson(json);

  final List<ITaskRead> _items;
  @override
  List<ITaskRead> get items {
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
    return 'PaginatedDataITaskRead(items: $items, total: $total, page: $page, size: $size, pages: $pages, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataITaskReadImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.nextPage, nextPage) || other.nextPage == nextPage) &&
            (identical(other.previousPage, previousPage) || other.previousPage == previousPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_items), total,
      page, size, pages, nextPage, previousPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataITaskReadImplCopyWith<_$PaginatedDataITaskReadImpl> get copyWith =>
      __$$PaginatedDataITaskReadImplCopyWithImpl<_$PaginatedDataITaskReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDataITaskReadImplToJson(
      this,
    );
  }
}

abstract class _PaginatedDataITaskRead implements PaginatedDataITaskRead {
  const factory _PaginatedDataITaskRead(
      {required final List<ITaskRead> items,
      required final int total,
      required final int page,
      required final int size,
      required final int pages,
      @JsonKey(name: 'next_page') final int? nextPage,
      @JsonKey(name: 'previous_page') final int? previousPage}) = _$PaginatedDataITaskReadImpl;

  factory _PaginatedDataITaskRead.fromJson(Map<String, dynamic> json) =
      _$PaginatedDataITaskReadImpl.fromJson;

  @override
  List<ITaskRead> get items;
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
  _$$PaginatedDataITaskReadImplCopyWith<_$PaginatedDataITaskReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
