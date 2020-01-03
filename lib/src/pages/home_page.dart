import 'package:flutter/material.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Preferencias de Usuario'),
      ),
      drawer: menuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario'),
          Divider(),
          Text('Color secundario'),
          Divider(),
          Text('Color secundario'),
          Divider(),
        ],
      ),
    );
  }

}
