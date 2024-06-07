import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fyp/core/models/pet_model.dart';

class ProductService {
  final Dio _dio = Dio();
  final String _apiURL1 = 'http://192.168.10.9:3005'; // Add the scheme

  Future<PetModel> postProduct(PetModel pet) async {
    try {
      final response = await _dio.post(
        '$_apiURL1/api/products', // Use string interpolation to concatenate the base URL with the endpoint
        data: pet.toJson(),
      );
      if (response.statusCode == 200) {
        // Product posted successfully
        if (kDebugMode) {
          print('Product posted successfully');
        }
        // Create and return a new PetModel object
        return PetModel(
          name: pet.name,
          price: pet.price,
          description: pet.description,
        );
      } else {
        throw Exception('Failed to post product: ${response.statusMessage}');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error posting product: $error');
      }
      throw Exception('Failed to post product');
    }
  }
}
