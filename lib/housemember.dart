import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/houseinfo.dart';
import 'package:regisrationform/infolists.dart';

class HouseMember extends StatefulWidget{
  // capture data from this page to show in Infomation Page (not done yet)
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<HouseMember>{

  String _name;

  Widget txt (String label,String blabel, String warnning, int length) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Text(label, style: TextStyle(fontSize: 18)),
        ),

        Expanded(
          child: Container(),
        ),

        Container(
          width: 250,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: blabel, labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
            ),
            ),

            validator: (String value){
              if(value.isEmpty){
                return warnning;
              }
            },

            onSaved: (String value){
              _name = value;
            },
          ),
        ),
      ],
    );
  } // data not save yet

  @override
  Widget build(BuildContext context) {

    final titletxt = Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 32, 0, 18),
        child: Text("Registration Form", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
    );

    final personalinformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Text('Personal Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),

        txt('Name', 'Username', 'Name is Require', null),

        txt('Sex', 'Male/Female', 'Sex is Require', null),

        txt('Date of Birth', 'DD/MM/YY', 'Date of Birth is Require', 8), // improve more

        txt('Job', null , 'Job is Requie', null),
      ]
    );

    final birthdetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Text('Birth Detail', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        txt('Date of Birth', 'DD/MM/YY', 'Date is Require', 8), // improve more

        txt('Place of Birth', 'Village/Commuse/District/City', 'Place is Require', null),
      ],
    );

    final registerinformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
        child: Text('Register Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),

        txt('Date of Member', 'DD/MM/YY', 'Member Date is require', 8), // improve more

        txt('Member Number', null, 'Member Number is require', 10),

        txt('ID Number', '123456789', 'ID is require', 9),

        txt('Polling Office.No', '012345', 'Polling Office is require', 10),
      ]
    );

    final button = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 28),
          child: SizedBox(
            width: 170, height: 60,
            child: RaisedButton(
              child: Text('Back', style: TextStyle(fontSize: 20)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              onPressed: () {

                Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HouseInfo()),
                );

              },
            ),
          ),
        ),

        SizedBox(width: 22),

        Padding(
          padding: EdgeInsets.only(top: 28),
          child: SizedBox(
            width: 170, height: 60,
            child: RaisedButton(
              child: Text('Confirm', style: TextStyle(fontSize: 20)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoLists()),
                  );
                }
          ),
        ),
      ),
      ],
    );

    final body = ListView(
      padding: EdgeInsets.all(8),
      children: [
        titletxt,
        personalinformation,
        birthdetail,
        registerinformation,
        button,
      ],
    );

    return Scaffold(
      body: body,
    );
  }

}