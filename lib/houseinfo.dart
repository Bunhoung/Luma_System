import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/housemember.dart';
import 'package:regisrationform/login_screen.dart';

class HouseInfo extends StatefulWidget{
  // capture data from this page to show in Infomation Page (not done yet)
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<HouseInfo> {

  @override
  Widget build(BuildContext context) {
    final title = Center(

      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 32, 0, 18),
        child: Text("Registration Form", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)
        ),
      ),
    );

    final houseinfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Text('House Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        ),

        txt('House Number', '1393', null),
        txt('Street Number', '194ab', null),
        txt('Songkat', 'Chhroy Congva', 'Songkat Name is Require'),
        txt('Khan', 'Russei Keo', 'Songkat Name is Require'),
        txt('City', 'Pnhom Penh', 'City Name is Require'),

      ],
    );

    final button = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 28),
          child: SizedBox(
            width: 170, height: 60,
            child: RaisedButton(
              child: Text('Exit', style: TextStyle(fontSize: 20)),
              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.amber),
                  borderRadius: BorderRadius.circular(15)),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen())
                );
              },
            ),
          ),
        ),

        SizedBox(width: 28),

        Padding(
          padding: EdgeInsets.only(top: 28),
          child: SizedBox(
            width: 170, height: 60,
            child: RaisedButton(
              child: Text('Next', style: TextStyle(fontSize: 20)),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.amber), borderRadius: BorderRadius.circular(15)
              ),
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HouseMember()),
                  );
              },
            ),
          ),
        ),
      ], // Children
    );

    final body = ListView(
      padding: EdgeInsets.all(8),
      children: [
        title,
        houseinfo,
        button,
      ],
    );

    return Scaffold(
      body: body,
    );
  }

  Widget txt(String label, String blabel, String warnning) {
    String _name;
    return Row(
      children: [
        Text(label, style: TextStyle(fontSize: 18)
        ),

        Expanded(
          child: Container(),
        ),

        Container(
          width: 250,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: blabel,
              labelStyle: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.3),
              ),
            ),

            validator: (String value) {
              if (value.isEmpty) {
                return warnning;
              }
              return null;
            },
            onSaved: (String value) {
              _name = value;
            },
          ),
        ),
      ],
    );
  } // data not save yet
}