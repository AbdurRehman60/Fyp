class PetModel {
  String? name;
  String? location;
  int? price;
  String? breed;
  String? category;
  List<String>? images;
  String? img;
  String? age;
  String? weight;
  String? sex;
  String? vaccination;
  int? longitude;
  int? latitude;
  String? title;
  String? description;
  String? month;

  PetModel(
      {this.name,
      this.location,
      this.price,
      this.breed,
      this.images,
      this.category,
      this.img,
      this.age,
      this.weight,
      this.sex,
      this.vaccination,
      this.longitude,
      this.latitude,
      this.title,
      this.description,
      this.month});

  PetModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    price = json['price'];
    breed = json['breed'];
    category = json['category'];
    img = json['img'];
    age = json['age'];
    weight = json['weight'];
    sex = json['sex'];
    images = json['images'];
    vaccination = json['vaccination'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    title = json['title'];
    description = json['description'];
    month = json['month'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['location'] = location;
    data['price'] = price;
    data['breed'] = breed;
    data['category'] = category;
    data['img'] = img;
    data['age'] = age;
    data['weight'] = weight;
    data['sex'] = sex;
    data['vaccination'] = vaccination;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['title'] = title;
    data['description'] = description;
    data['month'] = month;
    return data;
  }
}
