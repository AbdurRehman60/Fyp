// import 'package:flutter/foundation.dart';

// import 'package:dio/dio.dart';
// import 'package:fyp/core/models/pet_model.dart';

// class PetProvider extends ChangeNotifier {
//   final Dio _dio = Dio();
//   final String _apiURL1 = 'http://192.168.10.9:3005'; // Add the scheme

//   List<PetModel> _pets = [];
//   List<PetModel> get pets => _pets;

//   Future<List<PetModel>> fetchPets() async {
//     try {
//       final response = await _dio.get('$_apiURL1/api/products');
//       final List<dynamic> responseData = response.data;
//       _pets = responseData
//           .map((pet) => PetModel(
//                 name: pet['name'],
//                 location: pet['location'],
//                 price: pet['price'],
//                 breed: pet['breed'],
//                 category: pet['category'],
//                 img: pet['img'],
//                 age: pet['age'],
//                 weight: pet['weight'],
//                 // sex: pet['sex'],
//                 vaccination: pet['vaccination'],
//                 // longitude: pet['longitude'],
//                 // latitude: pet['latitude'],
//                 title: pet['title'],
//                 description: pet['description'],
//                 // month: pet['month'],
//                 images: pet['images'].cast<String>(),
//               ))
//           .toList();
//       notifyListeners();
//       return _pets;
//     } catch (error) {
//       if (kDebugMode) {
//         print('Error fetching pets: $error');
//       }
//       throw Exception('Failed to fetch pets');
//     }
//   }

//   Future<PetModel> addPet(PetModel pet) async {
//     try {
//       final response = await _dio.post(
//         '$_apiURL1/api/products', // Use _apiURL1 as a variable
//         data: pet.toJson(),
//       );
//       if (response.statusCode == 200) {
//         // Pet added successfully
//         fetchPets(); // Refresh the list of pets
//         return pet; // Return the newly added pet
//       } else {
//         throw Exception('Failed to add pet');
//       }
//     } catch (error) {
//       if (kDebugMode) {
//         print('Error adding pet: $error');
//       }
//       throw Exception('Failed to add pet');
//     }
//   }

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
      final response = await _dio.get('$_apiURL1/api/products');
      final List<dynamic>? responseData = response.data;
      if (responseData != null) {
        _pets = responseData.map((pet) {
          List<String> images = [];
          if (pet['images'] != null) {
            for (var image in pet['images']) {
              images.add(image);
            }
          }
          return PetModel(
            name: pet['name'],
            // location: pet['location'],
            price: pet['price'],
            breed: pet['breed'],
            // category: pet['category'],
            img: pet['img'],
            age: pet['age'],
            // weight: pet['weight'],
            // title: pet['title'],
            description: pet['description'],
            images: images,
          );
        }).toList();
        notifyListeners();
        return _pets;
      } else {
        throw Exception('Response data is null');
      }
    } catch (error) {
      if (kDebugMode) {
        print('Error fetching pets: $error');
      }
      throw Exception('Failed to fetch pets');
    }
  }

  Future<PetModel> addPet(PetModel pet, List<String> imagePaths) async {
    try {
      FormData formData = FormData.fromMap({
        'title': pet.title,
        'description': pet.description,
        'price': pet.price,
        'age': pet.age,
        'breed': pet.breed,
        'images':
            imagePaths.map((path) => MultipartFile.fromFileSync(path)).toList(),
      });

      final response = await _dio.post(
        '$_apiURL1/api/products',
        data: formData,
      );

      if (response.statusCode == 200) {
        // Pet added successfully
        await fetchPets(); // Refresh the list of pets
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
