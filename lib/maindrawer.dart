import 'package:flutter/material.dart';
import 'package:helloworld/settingspage.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: Column(children: <Widget>[
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"))),
              ),
              Text(
                "Rahul Choudhari",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ]),
          ),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.home),
            onTap: null,
          ),
          ListTile(
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
          ListTile(
            title: Text(
              "LogOut",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(Icons.logout),
            onTap: null,
          )
        ]),
      ),
    );
  }
}
