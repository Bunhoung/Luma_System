import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:regisrationform/housemember.dart';
import 'package:regisrationform/infomation.dart';

class InfoLists extends StatefulWidget{

  final String name;
  InfoLists(this.name) : super();

  @override
  State<StatefulWidget> createState() {

    // want to name that user already register as a stack list
    return _State(name);
  }

}

class _State extends State<InfoLists>{

  String personal;
  _State(this.personal);

  void initState(){
    setState(() {
      personal = widget.name;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<String> personlists = [
      personal
    ];

    // ListView.builder(
    //     itemCount: personlists.length,
    //     itemBuilder: (context, int index){
    //       return Container(
    //         child: ListTile(
    //           onTap: (){},
    //           title: Text(personlists[index]),
    //         ),
    //       );
    //     }
    // );

    final lists = Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Infomation()),
              );
            },
            child: Container(
                height: 48,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: personlists.map((overallList) => Text(overallList,
                        style: TextStyle(fontSize: 20))).toList(),
                  ),
                ),
              alignment: Alignment.centerLeft,
              ),
          ),
          Divider(
            color: Colors.black,
            thickness: 0.3,
          ),
        ],
      );


    // final lists = Column(
    //   children: [
    //     columnlist(),
    //   ],
    // );

    final addmore = Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: TextButton(
              onPressed: (){
                initState();
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => HouseMember()),
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

  // Widget columnlist(){
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget> [
  //       rowlist(context),
  //       Divider(
  //         color: Colors.black,
  //         thickness: 0.5,
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget rowlist (BuildContext context) {
  //   return InkWell(
  //     onTap: () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => Infomation()),
  //       );
  //     },
  //     child: Container(
  //       height: 48,
  //       padding: EdgeInsets.symmetric(horizontal: 18),
  //       child: Text(widget.name,
  //         style: TextStyle(
  //           fontSize: 20,
  //         ),),
  //       alignment: Alignment.centerLeft,
  //     ),
  //   );
  // }

}