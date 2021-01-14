import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/houseinfo.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _State();
  }

}

class _State extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration( labelText: 'Email', labelStyle: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3)),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.3),),
                suffixIcon: IconButton(
                    icon: Icon(Icons.visibility_off),
                    onPressed: (){},
                ),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(28),
                onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HouseInfo())
                );
                },
                child: Text('Login', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );

  }
}