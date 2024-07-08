import 'package:app_shop/screen/user_login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20,
                    bottom: 10,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                    left: 20,
                    bottom: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My Profile",
                    style: textTheme.headline3,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 0,
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55),
                            border: Border.all(
                              color: Colors.purpleAccent,
                              width: 2,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 55,
                            backgroundImage:
                                const AssetImage('assets/images/profile_pic.jpg'),
                            child: GestureDetector(
                              onTap: () {
                                // print('Edit profile');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.purple,
                                ),
                                margin: const EdgeInsets.only(
                                  left: 88,
                                  top: 65,
                                ),
                                child: const Icon(
                                  Icons.edit,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Yogesh",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              "Sarwar",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 0,
                                right: 20,
                                top: 10,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                      top: 10,
                                    ),
                                    child: const Text(
                                      '+91-1234567891',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      _buildProfileTile(context, 'edit', 'Edit Profile'),
                      const SizedBox(height: 5),
                      _buildProfileTile(context, 'user', 'My Orders'),
                      const SizedBox(height: 5),
                      _buildProfileTile(context, 'settings', 'Settings'),
                      const SizedBox(height: 5),
                      _buildProfileTile(context, 'info', 'Contact Us'),
                      const SizedBox(height: 15),
                    ],
                  ),
                  _signOutButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _signOutButton(BuildContext context) {
  return Container(
    width: 145,
    height: 40,
    margin: const EdgeInsets.only(
      top: 10,
      left: 55,
      bottom: 40,
    ),
    child: MaterialButton(
      color: Colors.white,
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(UserLoginScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Padding(
              padding: EdgeInsets.only(
                top: 2.0,
                bottom: 2.0,
                right: 7,
              ),
              child: Icon(
                Icons.logout,
                color: Colors.red,
                size: 24,
              ),
            ),
            Text(
              'Sign out',
              style: TextStyle(
                color: Colors.black,
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildProfileTile(BuildContext context, String icon, String title) {
  var textTheme = Theme.of(context).textTheme;
  return Container(
    width: 350,
    padding: const EdgeInsets.only(
      left: 40,
    ),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage('assets/images/animated_$icon.gif'),
          width: 35,
          height: 35,
        ),
      ),
      title: Text(
        title,
        style: textTheme.headline5,
      ),
      trailing: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}
