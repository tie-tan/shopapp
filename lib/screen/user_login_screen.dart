import 'package:app_shop/screen/bottom_navigation.dart';
import 'package:app_shop/screen/home_screen.dart';
import 'package:app_shop/screen/user_signup_screen.dart';
import 'package:flutter/material.dart';

class UserLoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  _UserLoginScreenState createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  TextEditingController? _emailTextController;
  TextEditingController? _passwordTextController;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      left: 25,
                    ),
                    child: Text(
                      "Log in",
                      style: textTheme.headline3,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Log in with one of the following options.',
                  style: textTheme.subtitle1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 68,
                        width: deviceWidth * 0.42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(35, 31, 32, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Transform.scale(
                          scale: 0.6,
                          child: Image.asset(
                            'assets/images/google.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 68,
                        width: deviceWidth * 0.42,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(35, 31, 32, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Transform.scale(
                          scale: 0.6,
                          child: Image.asset(
                            'assets/images/fb.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 28,
                  top: 12,
                  bottom: 10,
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Email',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  controller: _emailTextController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your email",
                    fillColor: const Color.fromRGBO(35, 31, 32, 1),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 28,
                  top: 12,
                  bottom: 10,
                ),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Password',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: TextField(
                  controller: _passwordTextController,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your password",
                    fillColor: const Color.fromRGBO(35, 31, 32, 1),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(BottomNavigationScreen.routeName);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[Colors.purpleAccent, Colors.purple],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: Container(
                      height: 50,
                      constraints: const BoxConstraints(
                        minWidth: 88.0,
                        minHeight: 36.0,
                      ), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(UserSignupScreen.routeName);
                        },
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            color: Color.fromRGBO(253, 254, 255, 1),
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
