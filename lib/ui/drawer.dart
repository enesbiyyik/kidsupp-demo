import 'package:flutter/material.dart';


class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Color learch = Color.fromARGB(255, 204, 170, 255);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Enes Bıyyık"),
              accountEmail: Text("Kabataş Erkek Lisesi"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/54243479?s=460&u=4f0e74929cb7272deeb0661ace23b87081688da5&v=4'),
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: (){},
                  splashColor: learch,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Hesabım"),
                      )),
                ),
                InkWell(
                  onTap: (){},
                  splashColor: learch,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.person_outline),
                        title: Text("Eşleşmeler"),
                      )),
                ),
                InkWell(
                  onTap: (){},
                  splashColor: learch,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Ayarlar"),
                      )),
                ),
                Divider(),
                InkWell(
                  onTap: (){},
                  splashColor: learch,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text("Altın Satın Al"),
                      )),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: AboutListTile(
                    applicationName: "Flutter Dersleri",
                    applicationIcon: Icon(Icons.apps),
                    applicationVersion: "2.0",
                    child: Text("Hakkımızda"),
                    applicationLegalese: null,
                    icon: Icon(Icons.book),
                    aboutBoxChildren: <Widget>[
                      Text("C1"),
                      Text("C1"),
                      Text("C1"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
