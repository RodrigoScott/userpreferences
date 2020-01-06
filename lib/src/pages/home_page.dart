import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/user_preferences.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'Home';
  final save = new UserPreferences();


  @override
  Widget build(BuildContext context) {

    save.setpage = HomePage.routeName;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: (save.getsecundaryColor) ? Colors.cyan: Colors.blue,
         title: Text('Preferencias de Usuario'),
      ),
      drawer: menuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _theme(),
          Divider(),
          _gender(),
          Divider(),
          Text('Nombre: ${save.getname}'),
          Divider(),
        ],
      ),
    );
  }

  Widget _theme(){
    return Container(
      child: save.getsecundaryColor ? Text('Color secundario: Cyan') :
      Text('Color secundario: Azul')
    );
  }

  Widget _gender(){
    return Container(
        child: save.gender == 1 ? Text('Genero: Masculino') : Text('Genero: Femenino')
    );
  }


}
