

import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences{
  static final UserPreferences _instance = new UserPreferences._internal();

  UserPreferences._internal();

  factory UserPreferences(){
    return _instance;
  }

  SharedPreferences _save;

  initSave() async{
    this._save = await SharedPreferences.getInstance();
  }

  //SET & GET
get gender{
    return _save.getInt('gender') ?? 1;
}

set gender (int value){
    _save.setInt('gender', value);
}

 get getsecundaryColor{
    return _save.getBool('secundaryColor') ?? false;
}

 set setsecundaryColor(bool value){
   _save.setBool('secundaryColor', value);
}

  get getname{
    return _save.getString('name') ?? '';
  }

  set setname (String value){
    _save.setString('name', value);
  }

  get getpage{
    return _save.getString('page') ?? 'Home';
  }

  set setpage (String value){
    _save.setString('page', value);
  }

}