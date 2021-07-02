import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pet_api/api/pet_api.dart';
import 'package:pet_api/model/pet.dart';
import 'package:pet_api/serializers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenAPI Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String notice = 'Pet not loaded';

  Future<void> _reloadPet() async {
    final Dio dio = Dio(BaseOptions(baseUrl: 'https://petstore.swagger.io/v2'));
    final PetApi petApi = PetApi(dio, standardSerializers);

    try {
      final int petId = Random().nextBool() ? 133 : 9;
      final Response<Pet> response = await petApi.getPetById(petId, headers: <String, String>{'Authorization': 'Bearer special-key'});
      setState(() {
        notice = response.data.toString();
      });
    } catch (error) {
      setState(() {
        notice = error.toString();
      });
    }
    print(notice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OpenAPI Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              notice,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reloadPet,
        tooltip: 'Refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
