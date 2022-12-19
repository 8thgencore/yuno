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
  Future<void> postApiV1Role({required body}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/v1/role',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    return null;
  }

  @override
  Future<IGetResponsePaginatedIRoleRead> getApiV1RoleList({
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
        _setStreamType<IGetResponsePaginatedIRoleRead>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/role/list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IGetResponsePaginatedIRoleRead.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IGetResponseBaseIRoleRead> getApiV1RoleRoleId(
      {required roleId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IGetResponseBaseIRoleRead>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/role/${roleId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IGetResponseBaseIRoleRead.fromJson(_result.data!);
    return value;
  }

  @override
  Future<IPutResponseBaseIRoleRead> putApiV1RoleRoleId({
    required roleId,
    required body,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<IPutResponseBaseIRoleRead>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/role/${roleId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = IPutResponseBaseIRoleRead.fromJson(_result.data!);
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
