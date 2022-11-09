import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/theme/app_colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    Key? key,
    this.title,
    this.leading,
    this.actions,
    this.body,
    this.bottomNavigationBar,
  }) : super(key: key);

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? body;
  final Widget? bottomNavigationBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kAppBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.kAppBackground,
        leading: leading,
        centerTitle: false,
        title: title,
        /* title: Text(
          title,
          style: AppTextTheme.titleAppBar(),
        ), */
        actions: actions,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
