//import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/models/category_model.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void fetchData() async {
    var dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories',
    );

    categories = categoryModelFromResponseList(response.data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      margin: const EdgeInsets.only(bottom: 30.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(category.image.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.only(
                  left: index == 0 ? 10.0 : 0.0,
                  right: 25.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: index == 0 ? 10.0 : 0.0,
                  right: 25.0,
                ),
                child: Text(
                  category.name.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
