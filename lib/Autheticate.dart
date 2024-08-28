// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:realtime/LoginScreen.dart';

import 'Screens/HomeScreen.dart';

class Autheticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return Homescreen();
    } else {
      return LoginScreen();
    }
  }
}
