import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/housemember.dart';

class InfoLists extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // want to name that user already complete as a stack list
    return _State();
  }

}

class _State extends State<InfoLists>{
  @override
  Widget build(BuildContext context) {

    final lists = Row( // want to generate the list show name that have
      // been fill in to the form (not done yet)
      children: [
        Container(
          height: 50,
          width: 410,
          color: Colors.blue,
          child: TextButton(
            child: Text('First Person', style: TextStyle(fontSize: 18, color: Colors.black),),
            onPressed: (){
              // capture Name User that already complete as a stack (not done yet)
            },
          ),
        ),
      ],
    );

    final addmore = Column( // want to let user tap to more to HouseMember Page
      // to add more member in there house ( not done yet )
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HouseMember()),
                );
              },
              child: Text('+ Add more Family Member', style: TextStyle(fontSize: 18)),
          ),
        ),
      ],
    );

    final submit = Column( // Complete the form
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: SizedBox(
            width: 170,
            height: 60,
            child: RaisedButton(
                child: Text('Complete', style: TextStyle(fontSize: 18)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: (){
                }
            ),
          ),
        )
      ],
    );

    final body = ListView(
      children: [
        lists,
        addmore,
        submit,
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Member List'),
      ),
      body: body,
    );
  }

}