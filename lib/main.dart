import 'package:flutter/material.dart';

import 'home.dart';
import 'location.dart';

void main() => runApp(MaterialApp(
initialRoute: '/home', routes: {
//  '/': (context) => LoginPage(),
      '/home': (context) => Home(),
      '/location': (context) => Location(),
    }));
