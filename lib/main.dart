import 'package:app_shop/screen/bottom_navigation.dart';
import 'package:app_shop/screen/cart_screen.dart';
import 'package:app_shop/screen/food_screen.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/medicine_screen.dart';
import 'package:app_shop/screen/user_login_screen.dart';
import 'package:app_shop/screen/user_signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // final themeStr = await rootBundle.loadString('assets/flutter_theme.json');
  // final themeJson = jsonDecode(themeStr);
  // final theme = ThemeDecoder.decodeThemeData(themeJson)!;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: themeData,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white),
          headline2: TextStyle(color: Colors.white),
          headline3: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
          headline4: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          subtitle1: TextStyle(color: Colors.grey),
          subtitle2: TextStyle(color: Colors.white),
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
      routes: {
        '/': (context) => const UserSignupScreen(),
        BottomNavigationScreen.routeName: (context) => const BottomNavigationScreen(),
        UserLoginScreen.routeName: (context) => const UserLoginScreen(),
        UserSignupScreen.routeName: (context) => const UserSignupScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        CartScreen.routeName: (context) => const CartScreen(),
        FoodScreen.routeName: (context) => const FoodScreen(),
        MedicineScreen.routeName: (context) => const MedicineScreen(),
        // ProductDetailScreen.routeName: (context) => ProductDetailScreen(Demo.products[0]),
      },
    );
  }
}
