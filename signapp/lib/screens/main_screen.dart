import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late SharedPreferences _sharedPreferences;
    SharedPreferences.getInstance()
        .then((value) => {_sharedPreferences = value});
    return Scaffold(
      body: Column(
        children: [
          Text('MainScreen'),
          ElevatedButton(onPressed: (){
            print(_sharedPreferences.get('userId'));
          }, child: Text('_sharedPreference Test'))
        ],
      ),
    );
  }
}
