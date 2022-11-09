import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/constant/app_constant.dart';
import 'package:flutter_practica1_app/ui/theme/app_colors.dart';

class BannerView extends StatelessWidget {
  const BannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: kMarginApp,
        right: kMarginApp,
        bottom: 20.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: AppColors.kSearchColor,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            width: 90.0,
            height: 90.0,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppColors.kAppBackground,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Icon(
                Icons.percent,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "50% OFF",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "on all women's shoes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(width: 70.0),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.brown,
          )
        ],
      ),
    );
  }
}
