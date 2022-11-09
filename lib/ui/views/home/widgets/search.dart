import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/constant/app_constant.dart';
import 'package:flutter_practica1_app/ui/theme/app_colors.dart';
import 'package:flutter_practica1_app/ui/theme/app_text_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kMarginApp,
        right: kMarginApp,
        bottom: 40.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      height: 55.0,
      decoration: BoxDecoration(
        color: AppColors.kSearchColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Search...",
            style: AppTextTheme.subTitle(color: AppColors.kSubTitle),
          ),
          const SizedBox(width: 10.0),
          SvgPicture.asset(
            "assets/icons/search.svg",
            color: AppColors.kSubTitle,
            width: 25.0,
          ),
        ],
      ),
    );
  }
}
