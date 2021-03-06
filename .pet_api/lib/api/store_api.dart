//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// 

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:built_collection/built_collection.dart';
import 'package:pet_api/model/order.dart';

class StoreApi {

  final Dio _dio;

  final Serializers _serializers;

  const StoreApi(this._dio, this._serializers);

  /// Delete purchase order by ID
  ///
  /// For valid response try integer IDs with positive integer value. Negative or non-integer values will generate API errors
  Future<Response<void>> deleteOrder(
    int orderId, { 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/store/order/{orderId}'.replaceAll('{' r'orderId' '}', orderId.toString()),
      method: 'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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

  /// Returns pet inventories by status
  ///
  /// Returns a map of status codes to quantities
  Future<Response<BuiltMap<String, int>>> getInventory({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/store/inventory',
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
    
    final _response = await _dio.fetch<dynamic>(_request);
    

    const _responseType = FullType(BuiltMap, [FullType(String), FullType(int)]);
    final BuiltMap<String, int> _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as BuiltMap<String, int>;

    return Response<BuiltMap<String, int>>(
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

  /// Find purchase order by ID
  ///
  /// For valid response try integer IDs with value >= 1 and <= 10. Other values will generated exceptions
  Future<Response<Order>> getOrderById(
    int orderId, { 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/store/order/{orderId}'.replaceAll('{' r'orderId' '}', orderId.toString()),
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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
    

    const _responseType = FullType(Order);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as Order;

    return Response<Order>(
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

  /// Place an order for a pet
  ///
  /// 
  Future<Response<Order>> placeOrder(
    Order body, { 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _request = RequestOptions(
      path: r'/store/order',
      method: 'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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

    const _type = FullType(Order);
    _bodyData = _serializers.serialize(body, specifiedType: _type);

_request.data = _bodyData;
    
    final _response = await _dio.fetch<dynamic>(_request);
    

    const _responseType = FullType(Order);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as Order;

    return Response<Order>(
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
