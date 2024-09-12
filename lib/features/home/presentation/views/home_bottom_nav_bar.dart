import 'package:dalel_app/constants.dart';
import 'package:dalel_app/features/cart/presentation/views/cart_view.dart';
import 'package:dalel_app/features/home/presentation/views/home_view.dart';
import 'package:dalel_app/features/profile/presentation/views/profile_view.dart';
import 'package:dalel_app/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

PersistentTabController _controller = PersistentTabController();

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _buildItems(),
      backgroundColor: brownColor,
      decoration: navBarDecorationMethod(),
      navBarStyle: NavBarStyle.style9,
    );
  }

  NavBarDecoration navBarDecorationMethod() {
    return const NavBarDecoration(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
    ));
  }
}

List<Widget> _buildScreens() {
  return const [
    HomeView(),
    CartView(),
    SearchView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _buildItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.home,
        color: Colors.brown,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.shopping_cart,
        color: Colors.brown,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.search,
        color: Colors.brown,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.person,
        color: Colors.brown,
      ),
    ),
  ];
}
