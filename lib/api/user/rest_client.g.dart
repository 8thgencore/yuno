// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _Client implements Client {
  _Client(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<IGetResponseBaseIUserRead> getUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IGetResponseBaseIUserRead>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IGetResponseBaseIUserRead.fromJson(_result.data!);
    return value;
  }

  @override
  Future<void> postUser({required body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = body;
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/user',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<IGetResponsePaginatedIUserReadWithoutProjects> getUserList({
    page = 1,
    size = 50,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IGetResponsePaginatedIUserReadWithoutProjects>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user/list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        IGetResponsePaginatedIUserReadWithoutProjects.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IGetResponsePaginatedIUserReadWithoutProjects> getUserListByCreatedAt({
    order = OrderType.asc,
    page = 1,
    size = 50,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'order': order?.type,
      r'page': page,
      r'size': size,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IGetResponsePaginatedIUserReadWithoutProjects>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user/list/by_created_at',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        IGetResponsePaginatedIUserReadWithoutProjects.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IGetResponseBaseIUserRead> getUserUserId({required userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IGetResponseBaseIUserRead>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IGetResponseBaseIUserRead.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IPutResponseBaseIUserRead> putUserUserId({
    required userId,
    required body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IPutResponseBaseIUserRead>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IPutResponseBaseIUserRead.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IDeleteResponseBaseIUserRead> deleteUserUserId(
      {required userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IDeleteResponseBaseIUserRead>(Options(
      method: 'DELETE',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IDeleteResponseBaseIUserRead.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
