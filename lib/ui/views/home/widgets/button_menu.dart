import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  const ButtonMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.0),
      width: 50.0,
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}
