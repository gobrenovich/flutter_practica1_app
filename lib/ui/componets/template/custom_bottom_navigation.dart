import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/theme/app_colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kAppNavBarBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: double.infinity,
      height: 120,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(31, 34, 39, 1.0),
          currentIndex: 0,
          elevation: 0,
          selectedItemColor: const Color.fromRGBO(252, 211, 119, 1.0),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Home',
              activeIcon: Icon(
                Icons.home,
                color: Color.fromRGBO(252, 211, 119, 1.0),
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 40,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
