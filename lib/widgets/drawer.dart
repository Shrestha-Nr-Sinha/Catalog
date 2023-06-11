import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  //const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = "";
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Shrestha Narayan Sinha"),
                accountEmail: Text("shrestha.narayan@gmail.com"),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              ),
            ),
            ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("Home",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 1.2)),
            ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 1.2)),
            ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text("Email me",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 1.2)),
          ],
        ),
      ),
    );
  }
}
