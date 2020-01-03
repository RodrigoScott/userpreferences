import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Preferencias de Usuario'),
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
