import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/componets/template/custom_scaffold.dart';
import 'package:flutter_practica1_app/ui/views/home/widgets/banner.dart';
import 'package:flutter_practica1_app/ui/views/home/widgets/categories.dart';
import 'package:flutter_practica1_app/ui/views/home/widgets/header_text.dart';
import 'package:flutter_practica1_app/ui/views/home/widgets/products.dart';
import 'package:flutter_practica1_app/ui/views/home/widgets/search.dart';

import '../../componets/template/custom_bottom_navigation.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      //title: const ButtonMenu(),
      actions: const [
        //UserAvatar(),
      ],
      body: ListView(
        children: const [
          Search(),
          Categories(),
          BannerView(),
          HeaderText(),
          Products(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
