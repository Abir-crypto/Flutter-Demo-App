


import 'package:demo/DrawerFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Dice.dart';
import 'Form.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Center(
        child: RaisedButton(
          onPressed: (){callNumber();},
          child: Text("Call",
            style: TextStyle(

            ),),
          color: Colors.redAccent,
        ),
      ),
      RaisedButton(
        onPressed: (){
          // build(BuildContext context){
          //   Navigator.of(context).push(
          //       MaterialPageRoute(
          //           builder: (context)=>Page1()
          //       )
          //   );
          // }
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)=>Page1()
              )
          );
        },
        child: Text("Fill Up From"),
        color: Colors.amberAccent,
      ),
      Container(
        color: Colors.blueGrey[500],
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Dice(),
                Dice(),
                Dice(),
                Dice(),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Dice(),
                Dice(),
                Dice(),
                Dice(),

              ],
            ),
          ],
        ),
      ),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: tabs[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title:Text("Call"),
            backgroundColor: Colors.orangeAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            title:Text("Form"),
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title:Text("Dice"),
            backgroundColor: Colors.blueAccent,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currIndex = index;
          });
        },
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key ?key}) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RaisedButton(
              onPressed: (){callNumber();},
              child: Text("Call",
                style: TextStyle(

                ),),
              color: Colors.redAccent,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Page1()
                    )
                );
              },
              child: Text("Fill Up From"),
              color: Colors.amberAccent,
            ),
          ],
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
          ],
        ),
        Container(
          color: Colors.blueGrey[500],
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Dice(),
                  Dice(),
                  Dice(),
                  Dice(),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Dice(),
                  Dice(),
                  Dice(),
                  Dice(),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

callNumber(){
  String phoneNum = "tel:01558168727";
  launch(phoneNum);
}
