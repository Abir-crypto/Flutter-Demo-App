import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"My Demo App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
      body: BodyWidget(),
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
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
      ],
    );
  }
}

callNumber(){
  String phoneNum = "tel:01558168727";
  launch(phoneNum);
}

String name = "";
String email = "";
String phone = "";




// Widget buildEmail(){
//   return Scaffold(
//     body: Text("Email"),
//   );
// }
//
// Widget buildPhone(){
//   return Scaffold(
//     body: Center(
//       child: Text("Phone",
//       style: TextStyle(
//         fontWeight: FontWeight.w900,
//         fontSize: 40,
//       ),),
//     ),
//   );
// }


class Page1 extends StatefulWidget {
  const Page1({Key ?key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  Widget buildName(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Name: ",
          labelStyle: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic
          )
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Insert a Name';
        }
        return null;
      },
      onChanged: (value)=>setState(()=>name = value),
    );
  }

  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("From Fill Up"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          fromKey.currentState?.validate();
          fromKey.currentState?.save();
          print(name);
          if(!name.isEmpty) {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page2()
                )
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              buildName(),
            ],
          ),
        ),
      )
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key ?key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  Widget buildEmail(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Email: ",
          labelStyle: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic
          )
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Insert a Email';
        }
        return null;
      },
      onChanged: (value)=>setState(()=>email = value),
    );
  }

  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("From Fill Up"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          fromKey.currentState?.validate();
          fromKey.currentState?.save();
          print(email);
          if(!email.isEmpty) {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Page3()
                )
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              buildEmail(),
            ],
          ),
        ),
      )
    );;
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key ?key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  Widget buildPhone(){
    return TextFormField(
      decoration: InputDecoration(
          labelText: "Phone: ",
          labelStyle: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic
          )
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Insert a Phone';
        }
        return null;
      },
      onChanged: (value)=>setState(()=>phone = value),
    );
  }

  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("From Fill Up"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          fromKey.currentState?.validate();
          fromKey.currentState?.save();
          print(phone);
          if(!phone.isEmpty) {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Submit()
                )
            );
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
      body: Center(
        child: Form(
          key: fromKey,
          child: Column(
            children: [
              buildPhone(),
            ],
          ),
        ),
      )

    );
  }
}


class Submit extends StatefulWidget {
  const Submit({Key ?key}) : super(key: key);

  @override
  _SubmitState createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("From Fill Up"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Text(name),
            ),
            Card(
              child: Text(email),
            ),
            Card(
              child: Text(phone),
            ),
          ],
        ),
      )
    );
  }
}
