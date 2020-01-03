
import 'package:flutter/material.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'Settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secundaryColor = false;
  int _gender = 1;
  String _name = 'Rodrigo';

  TextEditingController _textCOntroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _textCOntroller = new TextEditingController( text: _name);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Ajustes'),
      ),
      drawer: menuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 20.0),),
          ),
          Divider(),
          SwitchListTile(
              value: _secundaryColor,
              onChanged: (value){
                _secundaryColor = value;
                setState(() {

                });
              },
            title: Text('Color secundario'),
          ),
          Divider(),
          RadioListTile(
              value: 1,
              groupValue: _gender,
              onChanged: (value){
                _gender = value;
                setState(() {

                });
              },
            title: Text('Masculino'),
          ),
          RadioListTile(
            value: 2,
            groupValue: _gender,
            onChanged: (value){
              _gender = value;
              setState(() {

              });

            },
            title: Text('Femenino'),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: _textCOntroller,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el telefono',
              ),
              onChanged: (value){

              },
            ),
          ),
        ],
      ),
    );
  }
}
