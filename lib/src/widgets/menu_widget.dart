import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/home_page.dart';
import 'package:userpreferences/src/pages/settings_page.dart';

class menuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/menu-img1.jpg'),
                fit: BoxFit.cover,
              ),
            ),

          ),

          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text('Home'),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue,),
            title: Text('People'),
            onTap: (){},
          ),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.blue,),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, SettingsPage.routeName);
              }
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blue,),
            title: Text('Pages'),
            onTap: (){},
          ),

        ],
      ),
    );
  }
}
