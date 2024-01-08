// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data_i_user_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedDataIUserRead _$PaginatedDataIUserReadFromJson(Map<String, dynamic> json) {
  return _PaginatedDataIUserRead.fromJson(json);
}

/// @nodoc
mixin _$PaginatedDataIUserRead {
  List<IUserRead> get items => throw _privateConstructorUsedError;
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
  $PaginatedDataIUserReadCopyWith<PaginatedDataIUserRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataIUserReadCopyWith<$Res> {
  factory $PaginatedDataIUserReadCopyWith(
          PaginatedDataIUserRead value, $Res Function(PaginatedDataIUserRead) then) =
      _$PaginatedDataIUserReadCopyWithImpl<$Res, PaginatedDataIUserRead>;
  @useResult
  $Res call(
      {List<IUserRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class _$PaginatedDataIUserReadCopyWithImpl<$Res, $Val extends PaginatedDataIUserRead>
    implements $PaginatedDataIUserReadCopyWith<$Res> {
  _$PaginatedDataIUserReadCopyWithImpl(this._value, this._then);

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
              as List<IUserRead>,
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
abstract class _$$PaginatedDataIUserReadImplCopyWith<$Res>
    implements $PaginatedDataIUserReadCopyWith<$Res> {
  factory _$$PaginatedDataIUserReadImplCopyWith(
          _$PaginatedDataIUserReadImpl value, $Res Function(_$PaginatedDataIUserReadImpl) then) =
      __$$PaginatedDataIUserReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IUserRead> items,
      int total,
      int page,
      int size,
      int pages,
      @JsonKey(name: 'next_page') int? nextPage,
      @JsonKey(name: 'previous_page') int? previousPage});
}

/// @nodoc
class __$$PaginatedDataIUserReadImplCopyWithImpl<$Res>
    extends _$PaginatedDataIUserReadCopyWithImpl<$Res, _$PaginatedDataIUserReadImpl>
    implements _$$PaginatedDataIUserReadImplCopyWith<$Res> {
  __$$PaginatedDataIUserReadImplCopyWithImpl(
      _$PaginatedDataIUserReadImpl _value, $Res Function(_$PaginatedDataIUserReadImpl) _then)
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
    return _then(_$PaginatedDataIUserReadImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<IUserRead>,
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
class _$PaginatedDataIUserReadImpl implements _PaginatedDataIUserRead {
  const _$PaginatedDataIUserReadImpl(
      {required final List<IUserRead> items,
      required this.total,
      required this.page,
      required this.size,
      required this.pages,
      @JsonKey(name: 'next_page') this.nextPage,
      @JsonKey(name: 'previous_page') this.previousPage})
      : _items = items;

  factory _$PaginatedDataIUserReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedDataIUserReadImplFromJson(json);

  final List<IUserRead> _items;
  @override
  List<IUserRead> get items {
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
    return 'PaginatedDataIUserRead(items: $items, total: $total, page: $page, size: $size, pages: $pages, nextPage: $nextPage, previousPage: $previousPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataIUserReadImpl &&
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
  _$$PaginatedDataIUserReadImplCopyWith<_$PaginatedDataIUserReadImpl> get copyWith =>
      __$$PaginatedDataIUserReadImplCopyWithImpl<_$PaginatedDataIUserReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedDataIUserReadImplToJson(
      this,
    );
  }
}

abstract class _PaginatedDataIUserRead implements PaginatedDataIUserRead {
  const factory _PaginatedDataIUserRead(
      {required final List<IUserRead> items,
      required final int total,
      required final int page,
      required final int size,
      required final int pages,
      @JsonKey(name: 'next_page') final int? nextPage,
      @JsonKey(name: 'previous_page') final int? previousPage}) = _$PaginatedDataIUserReadImpl;

  factory _PaginatedDataIUserRead.fromJson(Map<String, dynamic> json) =
      _$PaginatedDataIUserReadImpl.fromJson;

  @override
  List<IUserRead> get items;
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
  _$$PaginatedDataIUserReadImplCopyWith<_$PaginatedDataIUserReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
