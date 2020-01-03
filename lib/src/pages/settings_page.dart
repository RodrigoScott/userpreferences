import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {

  static final String routeName = 'Settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      body: Column(
        children: <Widget>[
          Text('Color secundario'),
          SizedBox(height: 20.0,),
          Text('Color secundario'),
          SizedBox(height: 20.0,),
          Text('Color secundario'),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }
}
