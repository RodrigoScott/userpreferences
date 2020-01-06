
import 'package:flutter/material.dart';
import 'package:userpreferences/src/pages/user_preferences.dart';
import 'package:userpreferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = 'Settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secundaryColor = false;
  int _gender;
  String _name = 'Rodrigo';

  TextEditingController _textCOntroller;

  final save = new UserPreferences();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textCOntroller = new TextEditingController( text: save.getname);
    _gender = save.gender;
    _secundaryColor = save.getsecundaryColor;
    save.setpage = SettingsPage.routeName;

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (save.getsecundaryColor) ? Colors.cyan: Colors.blue,
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
            title: Text('Color secundario'),
              value: _secundaryColor,
              onChanged: (value){
              setState(() {
                save.setsecundaryColor = value;
                _secundaryColor = value;

              });

            }

          ),
          Divider(),
          RadioListTile(
              title: Text('Masculino'),
              value: 1,
              groupValue: _gender,
              onChanged: _setSelectedRadio,

          ),
          RadioListTile(
            title: Text('Femenino'),
            value: 2,
            groupValue: _gender,
            onChanged: _setSelectedRadio,

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
                save.setname = value;
                _name = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  _setSelectedRadio(int value) {
    save.gender = value;
    _gender = value;
    setState(() {});
  }

}
