import 'package:flutter/material.dart';
import 'package:rearticles/app/modules/Login/views/login_view.dart';
import 'package:rearticles/app/source/constants/constant.dart';

class DrawerProfile extends StatelessWidget {
  const DrawerProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: defaultColor,
      shape: BorderDirectional(top: BorderSide.none, bottom: BorderSide.none),
      child: ListView(
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(146, 255, 255, 255),
              border: Border(
                bottom: BorderSide(
                  color: secondaryColor1,
                ),
              ),
            ),
            child: Image(
              image: AssetImage(logo_2),
              height: 180,
              width: 190,
            ),
          ),
          SizedBox(height: defaultPadding),
          ListTile(
            leading: Icon(Icons.settings_rounded, color: secondaryColor1),
            title: Text('Settings', style: TextStyle(color: secondaryColor1)),
            onTap: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => LoginView()));
            },
          ),
          Divider(
            color: secondaryColor2,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.logout, color: secondaryColor1),
            title: Text(
              'Sign Out',
              style: TextStyle(color: secondaryColor1),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginView()));
            },
          ),
        ],
      ),
    );
  }
}
