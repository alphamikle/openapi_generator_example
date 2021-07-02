import 'package:dio/dio.dart';
import 'package:pet_api/api/pet_api.dart';
import 'package:pet_api/model/pet.dart';
import 'package:pet_api/serializers.dart';

Future<Pet> loadPet() async {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://petstore.swagger.io/v2'));
  final PetApi petApi = PetApi(dio, standardSerializers);
  const petId = 9;
  final Response<Pet> response = await petApi.getPetById(petId, headers: <String, String>{'Authorization': 'Bearer special-key'});
  return response.data;
}
