import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/home_page.dart';
import 'package:userpreferences/src/pages/settings_page.dart';
import 'package:userpreferences/src/pages/user_preferences.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  final save = new UserPreferences();
  await save.initSave();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final save = new UserPreferences();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: save.getpage,
      routes: {
        HomePage.routeName           : (BuildContext context) => HomePage(),
        SettingsPage.routeName       : (BuildContext context) => SettingsPage(),

      },


    );
  }
}