class CategoryModel {
  CategoryModel({
    this.id,
    this.name,
    this.image,
  });

  int? id;
  String? name;
  String? image;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );
}

List<CategoryModel> categories = [];

List<CategoryModel> categoryModelFromResponseList(List<dynamic> data) {
  List<CategoryModel> value = <CategoryModel>[];
  for (var element in data) {
    value.add(CategoryModel.fromJson(element));
  }
  return value;
}


/*
List<CategoryModel> categories2 = [
  CategoryModel(
    id: 1,
    name: "Clothes",
    image: "https://api.lorem.space/image/shoes?w=640&h=480&r=9423",
  ),
  CategoryModel(
    id: 2,
    name: "Electronics",
    image: "https://api.lorem.space/image/watch?w=640&h=480&r=132",
  ),
  CategoryModel(
    id: 3,
    name: "Furniture",
    image: "https://api.lorem.space/image/furniture?w=640&h=480&r=9689",
  ),
  CategoryModel(
    id: 4,
    name: "Shoes",
    image: "https://api.lorem.space/image/shoes?w=640&h=480&r=9423",
  ),
  CategoryModel(
    id: 5,
    name: "Others",
    image: "https://api.lorem.space/image?w=640&h=480&r=9310",
  ),
];
*/