import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:regisrationform/houseinfo.dart';
import 'package:regisrationform/infolists.dart';
import 'package:regisrationform/infomation.dart';
import 'package:regisrationform/housemember.dart';
import 'package:regisrationform/login_screen.dart';

void main (){
  final app = MaterialApp(
    home: LoginScreen(),
  );

/*void main () {
  final app = MaterialApp(
    routes: {
      '/': (context) => HouseInfo(),
      '/HouseMember': (context) => HouseMember(),
      '/InfoList': (context) => InfoLists(),
      '/Information': (context) => Infomation(),
    },
  );*/

  runApp(app);
}