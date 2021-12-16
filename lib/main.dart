import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:parcial_moviles_quezada/login.dart';


final FirebaseAuth auth = FirebaseAuth.instance;

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Email and Password Login',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}



