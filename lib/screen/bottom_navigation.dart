import 'package:animations/animations.dart';
import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/food_screen.dart';
import 'package:app_shop/screen/medicine_screen.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

/// This is the dimension of floation action button, used for the animation while using
/// [OpenContainer]
const double _fabDimension = 56;

class BottomNavigationScreen extends StatefulWidget {
  static const routeName = '/bottom-nav-screen';
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationScreenState createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Map<String, Object>> _pages = [
    {
      'page': const HomeScreen(),
      'title': 'Shop App',
    },
    {
      'page': const FoodScreen(),
      'title': 'Food Screen',
    },
    {
      'page': const MedicineScreen(),
      'title': 'Medicine Screen',
    },
    {
      'page': const ProfileScreen(),
      'title': 'My Profile',
    },
  ];

  /// [OpenContainer] from the [Animation] package is used to provide the zooming
  /// animation for the floating action button and
  /// [PageTransitionSwitcher] is used to switch between the pages with a fade through
  /// transition
  @override
  Widget build(BuildContext context) {
    GlobalKey globalKey = GlobalKey<State<TitledBottomNavigationBar>>();
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Material(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimatiion) {
            return FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimatiion,
              child: child,
              // fillColor: Colors.black,
            );
          },
          child: _pages[_selectedPageIndex]['page'] as Widget,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Visibility(
        visible: !keyboardIsOpen,
        child: OpenContainer(
          openBuilder: (ctx, _) {
            return const CartScreen();
          },
          closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(_fabDimension / 2),
            ),
          ),
          closedBuilder: (ctx, _) {
            return Container(
              color: Colors.purple,
              height: _fabDimension,
              width: _fabDimension,
              child: const Center(
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: TitledBottomNavigationBar(
        key: globalKey,
        onTap: _selectPage,
        curve: Curves.bounceInOut,
        currentIndex: _selectedPageIndex,
        reverse: true,
        inactiveColor: Colors.black,
        items: [
          TitledNavigationBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.fastfood),
            title: const Text('Food'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.medication),
            title: const Text('Medicine'),
          ),
          TitledNavigationBarItem(
            icon: const Icon(Icons.account_circle_outlined),
            title: const Text('Profile'),
          ),
        ],
      ),
    );
  }
}
