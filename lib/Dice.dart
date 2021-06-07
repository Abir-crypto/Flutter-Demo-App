import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              // offset: Offset(0, 1), // changes position of shadow
            ),
          ],


        ),
        child: Text("BOX",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Colors.redAccent
        ),),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        // margin: EdgeInsets.all(10),

      ),
      onTap: (){
        print("Container Pressed");
      },
    );
  }
}
