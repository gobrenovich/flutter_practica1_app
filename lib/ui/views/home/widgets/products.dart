import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/models/product_model.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
      'https://api.escuelajs.co/api/v1/categories/2/products',
      // queryParameters: {
      //   "page": 1,
      // },
    );

    products = productModelFromResponseList(response.data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260.0,
      //color: Colors.red,
      margin: const EdgeInsets.only(bottom: 30.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Column(
            children: [
              Container(
                width: 160.0,
                height: 180.0,
                margin: const EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: NetworkImage("${product.images?[0].toString()}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.only(
                    right: 10.0,
                    bottom: 140.0,
                  ),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              Container(
                //width: 100.0,
                height: 60.0,
                margin: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          product.title.toString(),
                          style: const TextStyle(
                            color: Colors.brown,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "S/. ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          //product.price.toString(),
                          "${product.price}",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 70.0,
                        ),
                        const Icon(
                          Icons.add,
                          color: Colors.brown,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
