import 'package:flutter_practica1_app/models/category_model.dart';

class ProductModel {
  ProductModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
    this.categoryId,
  });

  int? id;
  String? title;
  int? price;
  String? description;
  CategoryModel? category;
  List<String>? images;
  int? categoryId;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: CategoryModel.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
      );
}

List<ProductModel> products = [];

List<ProductModel> productModelFromResponseList(List<dynamic> data) {
  List<ProductModel> value = <ProductModel>[];
  for (var element in data) {
    value.add(ProductModel.fromJson(element));
  }
  return value;
}
/*
List<ProductModel> products2 = [
  ProductModel(
      id: 8,
      title: "Intelligent",
      price: 56,
      description:
          "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
      category: CategoryModel(
        id: 3,
        name: "Furniture",
        image: "https://api.lorem.space/image/furniture?w=640&h=480&r=9689",
      ),
      images: [
        "https://api.lorem.space/image/furniture?w=640&h=480&r=4460",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=585",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=8898"
      ]),
  ProductModel(
      id: 9,
      title: "Intelligent 1",
      price: 57,
      description:
          "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
      category: CategoryModel(
        id: 3,
        name: "Furniture",
        image: "https://api.lorem.space/image/furniture?w=640&h=480&r=9689",
      ),
      images: [
        "https://api.lorem.space/image/furniture?w=640&h=480&r=4460",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=585",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=8898"
      ]),
  ProductModel(
      id: 10,
      title: "Intelligent 2",
      price: 58,
      description:
          "Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals",
      category: CategoryModel(
        id: 3,
        name: "Furniture",
        image: "https://api.lorem.space/image/furniture?w=640&h=480&r=9689",
      ),
      images: [
        "https://api.lorem.space/image/furniture?w=640&h=480&r=4460",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=585",
        "https://api.lorem.space/image/furniture?w=640&h=480&r=8898"
      ]),
];
*/