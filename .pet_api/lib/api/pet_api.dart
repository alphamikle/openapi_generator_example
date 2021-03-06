//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
//

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:pet_api/api_util.dart';
import 'package:pet_api/model/api_response.dart';
import 'package:pet_api/model/pet.dart';

class PetApi {
  final Dio _dio;

  final Serializers _serializers;

  const PetApi(this._dio, this._serializers);

  /// Add a new pet to the store
  ///
  ///
  Future<Response<void>> addPet(
    Pet body, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
        'application/xml',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(Pet);
    _bodyData = _serializers.serialize(body, specifiedType: _type);

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    return _response;
  }

  /// Deletes a pet
  ///
  ///
  Future<Response<void>> deletePet(
    int petId, {
    String? apiKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()),
      method: 'DELETE',
      headers: <String, dynamic>{
        if (apiKey != null) r'api_key': apiKey,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    return _response;
  }

  /// Finds Pets by status
  ///
  /// Multiple status values can be provided with comma separated strings
  Future<Response<BuiltList<Pet>>> findPetsByStatus(
    BuiltList<String> status, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/findByStatus',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        r'status': status,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    const _responseType = FullType(BuiltList, [FullType(Pet)]);
    final BuiltList<Pet> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<Pet>;

    return Response<BuiltList<Pet>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Finds Pets by tags
  ///
  /// Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing.
  Future<Response<BuiltList<Pet>>> findPetsByTags(
    BuiltList<String> tags, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/findByTags',
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      queryParameters: <String, dynamic>{
        r'tags': tags,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    const _responseType = FullType(BuiltList, [FullType(Pet)]);
    final BuiltList<Pet> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltList<Pet>;

    return Response<BuiltList<Pet>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Find pet by ID
  ///
  /// Returns a single pet
  Future<Response<Pet>> getPetById(
    int petId, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()),
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'api_key',
            'keyName': 'api_key',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _request.data = _bodyData;

    _request.path = _dio.options.baseUrl + _request.path;
    final _response = await _dio.fetch<dynamic>(_request);

    const _responseType = FullType(Pet);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as Pet;

    return Response<Pet>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Update an existing pet
  ///
  ///
  Future<Response<void>> updatePet(
    Pet body, {
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet',
      method: 'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/json',
        'application/xml',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    const _type = FullType(Pet);
    _bodyData = _serializers.serialize(body, specifiedType: _type);

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    return _response;
  }

  /// Updates a pet in the store with form data
  ///
  ///
  Future<Response<void>> updatePetWithForm(
    int petId, {
    String? name,
    String? status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()),
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'application/x-www-form-urlencoded',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _bodyData = <String, dynamic>{
      if (name != null) r'name': encodeFormParameter(_serializers, name, const FullType(String)),
      if (status != null) r'status': encodeFormParameter(_serializers, status, const FullType(String)),
    };

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    return _response;
  }

  /// uploads an image
  ///
  ///
  Future<Response<ApiResponse>> uploadFile(
    int petId, {
    String? additionalMetadata,
    Uint8List? file,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/pet/{petId}/uploadImage'.replaceAll('{' r'petId' '}', petId.toString()),
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'oauth2',
            'name': 'petstore_auth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: [
        'multipart/form-data',
      ].first,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    dynamic _bodyData;

    _bodyData = FormData.fromMap(<String, dynamic>{
      if (additionalMetadata != null) r'additionalMetadata': encodeFormParameter(_serializers, additionalMetadata, const FullType(String)),
      if (file != null) r'file': MultipartFile.fromBytes(file, filename: r'file'),
    });

    _request.data = _bodyData;

    final _response = await _dio.fetch<dynamic>(_request);

    const _responseType = FullType(ApiResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as ApiResponse;

    return Response<ApiResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }
}
