import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/houseinfo.dart';
import 'package:regisrationform/infolists.dart';
import 'package:regisrationform/infomation.dart';

class HouseMember extends StatefulWidget{
  // capture data from this page to show in Infomation Page (not done yet)
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<HouseMember>{

/*  final _namekey = GlobalKey<FormState>();*/

  double textfieldlenght = 220;

  String _name;
  final controllerName = TextEditingController();

  Widget txt (String label) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Text(label, style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  } // data not save yet

  @override
  Widget build(BuildContext context) {

    final titletxt = Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 32, 0, 18),
        child: Text("Registration Form", style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold, color: Colors.black)),
      ),
    );

    final personalinformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Text('Personal Information', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        Row(
          children: [
            txt('Name'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                controller: controllerName,
                decoration: InputDecoration(
                  labelText: 'Username', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),

/*                validator: (value) {
                  if(value.isEmpty){
                    return 'Please input your name';
                  }
                  return null;
                }*/

              ),
            )
          ]
        ),

            Row(
              children: [
                txt('Sex'),

                Expanded(
                  child: Container(),
                ),

                Container(
                  width: textfieldlenght,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Male/Female', labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                    ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                txt('Job'),

                Expanded(
                  child: Container(),
                ),

                Container(
                  width: textfieldlenght,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Current Job', labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );

    final birthdetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
          child: Text('Birth Detail', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold)
          ),
        ),

        Row(
          children: [
            txt('Date of Birth'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'DD/MM/YY', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            txt('Place of Birth'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Village/Commuse/District/City', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),
      ],
    );

    final registerinformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(padding: EdgeInsets.fromLTRB(30, 20, 0, 10),
        child: Text('Register Information', style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold)
        ),
        ),

        Row(
          children: [
            txt('Date of Member'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'DD/MM/YY', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),
        // improve more

        Row(
          children: [
            txt('Member Number'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: 220,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Your ID', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            txt('ID Number'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: '123456789', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),

        Row(
          children: [
            txt('Polling Office.No'),

            Expanded(
              child: Container(),
            ),

            Container(
              width: textfieldlenght,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '012345', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),
                ),
                ),
              ),
            ),
          ],
        ),
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

                Navigator.push(
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
                  setState(() {
                    _name = controllerName.text;
                  });

                      final route = MaterialPageRoute(builder: (context) => InfoLists(_name));
                                        Navigator.of(context).push(route);
                }),
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