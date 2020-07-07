import 'package:flutter/material.dart';


class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
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
                  splashColor: Colors.blue,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Hesabım"),
                      )),
                ),
                InkWell(
                  onTap: (){},
                  splashColor: Colors.blue,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Ayarlar"),
                      )),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.all(5),
                  child: AboutListTile(
                    applicationName: "KidsUpp",
                    applicationIcon: Icon(Icons.apps),
                    applicationVersion: "2.0",
                    child: Text("Hakkımızda"),
                    applicationLegalese: null,
                    icon: Icon(Icons.book),
                    aboutBoxChildren: <Widget>[
                      Text("Tüm hakları saklıdır."),
                      Text("İsim hakkı ve uygulamanın tamamı"),
                      Text("Enes Bıyyık'a aittir."),
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
