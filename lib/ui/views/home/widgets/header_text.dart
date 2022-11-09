import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/constant/app_constant.dart';
import 'package:flutter_practica1_app/ui/theme/app_text_theme.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kMarginApp,
        vertical: 2.0,
      ),
      child: Text(
        "New Items",
        style: AppTextTheme.h2Bold(),
      ),
    );
  }
}
