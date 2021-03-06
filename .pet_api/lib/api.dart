//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// 

// ignore_for_file: unused_import

library pet_api.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:pet_api/serializers.dart';
import 'package:pet_api/auth/api_key_auth.dart';
import 'package:pet_api/auth/basic_auth.dart';
import 'package:pet_api/auth/oauth.dart';
import 'package:pet_api/api/pet_api.dart';
import 'package:pet_api/api/store_api.dart';
import 'package:pet_api/api/user_api.dart';


final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor(),
];

class PetApi {

    static const String basePath = r'https://petstore.swagger.io/v2';

    final Dio dio;

    final Serializers serializers;

    PetApi({
      Dio dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors,
    })  : this.serializers = serializers ?? standardSerializers,
          this.dio = dio ??
              Dio(BaseOptions(
                baseUrl: basePathOverride ?? basePath,
                connectTimeout: 5000,
                receiveTimeout: 3000,
              )) {
      if (interceptors == null) {
        this.dio.interceptors.addAll(_defaultInterceptors);
      } else {
        this.dio.interceptors.addAll(interceptors);
      }
    }

    void setOAuthToken(String name, String token) {
        (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)?.tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null) as BasicAuthInterceptor)?.authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null) as ApiKeyAuthInterceptor)?.apiKeys[name] = apiKey;
    }


    /**
    * Get PetApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PetApi getPetApi() {
    return PetApi(dio, serializers);
    }


    /**
    * Get StoreApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    StoreApi getStoreApi() {
    return StoreApi(dio, serializers);
    }


    /**
    * Get UserApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    UserApi getUserApi() {
    return UserApi(dio, serializers);
    }


}
