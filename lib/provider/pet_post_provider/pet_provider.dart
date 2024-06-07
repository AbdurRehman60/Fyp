import 'package:flutter/foundation.dart';

import 'package:dio/dio.dart';
import 'package:fyp/core/models/pet_model.dart';

class PetProvider extends ChangeNotifier {
  final Dio _dio = Dio();
  final String _apiURL1 = 'http://192.168.10.9:3005'; // Add the scheme

  List<PetModel> _pets = [];
  List<PetModel> get pets => _pets;

  Future<List<PetModel>> fetchPets() async {
    try {
      final response = await _dio
          .get('$_apiURL1/api/products'); // Use _apiURL1 as a variable
      final List<dynamic> responseData = response.data;
      _pets = responseData
          .map((pet) => PetModel(
                name: pet['name'],
                price: pet['price'],
                description: pet['description'],
                // Add other properties here
              ))
          .toList();
      notifyListeners();
      return _pets; // Return the list of PetModel
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching pets: $error');
      }
      throw Exception('Failed to fetch pets');
    }
  }

  Future<PetModel> addPet(PetModel pet) async {
    try {
      final response = await _dio.post(
        '$_apiURL1/api/products', // Use _apiURL1 as a variable
        data: pet.toJson(),
      );
      if (response.statusCode == 200) {
        // Pet added successfully
        fetchPets(); // Refresh the list of pets
        return pet; // Return the newly added pet
      } else {
        throw Exception('Failed to add pet');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error adding pet: $error');
      }
      throw Exception('Failed to add pet');
    }
  }
}
