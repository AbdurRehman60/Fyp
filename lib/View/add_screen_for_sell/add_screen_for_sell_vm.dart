import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp/core/models/pet_model.dart';

class PostOfferVM extends ChangeNotifier {
  List<File?>? images = [];
  PetModel? selectedService;
  final TextEditingController _offerNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  TextEditingController get offerNameController => _offerNameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get priceController => _priceController;
  TextEditingController get descriptionController => _descriptionController;
  TextEditingController get locationController => _locationController;

  void setSelectedService(PetModel service) {
    selectedService = service;
    notifyListeners();
  }

  // Future<void> selectFile() async {
  //   final ImagePicker _picker = ImagePicker();
  //   final XFile? file = await _picker.pickImage(source: image);

  //   if (file != null) {
  //     var image = File(file.path);
  //     images ??= []; // Initialize the list if it's null
  //     images!.add(image);
  //     notifyListeners(); // Assuming you're using a StateNotifier or similar
  //   }
  // }

  // void selectFile() async {
  //   var file = await ImagePicker().pickImage(source: ImageSource.gallery);
  //   if (file != null) {
  //     var image = File(file.path);
  //     images!.add(image);
  //     notifyListeners();
  //   }
  // }

  void clear() {
    _offerNameController.clear();
    _priceController.clear();
    _descriptionController.clear();
    images?.clear();
    notifyListeners();
  }
}
