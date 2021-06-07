import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AmrDrawer extends StatefulWidget {
  const AmrDrawer({Key? key}) : super(key: key);

  @override
  _AmrDrawerState createState() => _AmrDrawerState();
}

class _AmrDrawerState extends State<AmrDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Abir Bhai"),
                accountEmail: Text("AbirBhai@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://wallpaperaccess.com/full/1199391.jpg"),),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: ()=>Navigator.pushNamed(context, 'home'),
            ),
            ListTile(
              title: Text("Videos"),
              leading: Icon(Icons.video_label),
              onTap: ()=>Navigator.pushNamed(context, 'videos'),
            ),
            ListTile(
              title: Text("Demo"),
              leading: Icon(Icons.pages),
              onTap: ()=>Navigator.pushNamed(context, 'demo'),
            ),
          ],
        ),
      ),
    );
  }
}
