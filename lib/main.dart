import 'package:flutter/material.dart';

import 'home.dart';
import 'location.dart';
import 'login.dart';
import 'reg_ret.dart';
import 'reg_con.dart';
import 'reg_log.dart';

void main() => runApp(MaterialApp(initialRoute: '/home', routes: {
      '/login': (context) => LoginPage(),
      '/home': (context) => Home(),
      '/location': (context) => Location(),
      '/reg_ret.dart': (context) => RegistrationRet(),
      '/reg_con.dart': (context) => RegistrationCon(),
      '/reg_log.dart': (context) => RegistrationLog(),
    }));

class RwaziLtd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rwazi Ltd',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pacifico'),
      home: Home(),
    );
  }
}
