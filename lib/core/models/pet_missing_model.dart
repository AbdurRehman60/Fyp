class PetMissingModel {
  String? petName;
  String? category;
  String? breed;
  String? location;
  String? petImage;
  String? status;
  String? age;
  String? weight;
  String? sex;
  List<String>? images;
  DateTime? lastseen;

  PetMissingModel({
    this.petName,
    this.category,
    this.breed,
    this.location,
    this.petImage,
    this.status,
    this.age,
    this.sex,
    this.weight,
    this.images,
    this.lastseen,
  });

  PetMissingModel.fromJson(Map<String, dynamic> json) {
    petName = json['pet_name'];
    category = json['category'];
    breed = json['breed'];
    location = json['location'];
    petImage = json['pet_image'];
    status = json['status'];
    age = json['age'];
    weight = json['weight'];
    sex = json['sex'];
    images = json['images'];
    lastseen = json["lastseen"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pet_name'] = petName;
    data['category'] = category;
    data['breed'] = breed;
    data['location'] = location;
    data['pet_image'] = petImage;
    data['status'] = status;
    data['age'] = age;
    data['weight'] = weight;
    data['sex'] = sex;
    data['images'] = images;
    data["lastseen"] = lastseen;
    return data;
  }
}
