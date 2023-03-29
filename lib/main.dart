import 'package:flutter/material.dart';
import 'package:untitled7/login.dart';
import 'package:untitled7/register.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>Mylogin(),
      'register': (contex)=>MyRegister(),
    },
  ));
}