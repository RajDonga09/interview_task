import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:interview_task/core/network/api_client.dart';
import 'package:interview_task/core/network/app_http_client.dart' as http;
import 'package:interview_task/modules/animal/data/models/animals_model.dart';

abstract class AnimalsRemoteDataSource {
  Future<AnimalsApiResponse> loadAnimals();
}

@LazySingleton(
    as: AnimalsRemoteDataSource, env: [Environment.dev, Environment.prod])
class AnimalsHostApiDataSource extends ApiClient
    implements AnimalsRemoteDataSource {
  @override
  Future<AnimalsApiResponse> loadAnimals() async {
    final url = Uri.parse('https://api.publicapis.org/entries');
    final headers = getRequestHeader();

    final response = await http.get(url, headers: headers);
    if (response.statusCode != HTTP_SUCCESS) {
      checkResponseError(response.statusCode);
    }
    return AnimalsApiResponse.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }
}
