import 'package:flutter/material.dart';
import 'package:muslim_bag/coran.dart'; 
import 'package:muslim_bag/hadith.dart';
import 'package:muslim_bag/home.dart';
import 'package:muslim_bag/qibla.dart';
import 'package:muslim_bag/tasbih.dart';

class MyAppduaa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'duaa',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePageduaa(),
    );
  }
}

class MyHomePageduaa extends StatefulWidget {
  @override
  _MyHomePageStateduaa createState() => _MyHomePageStateduaa();
}

class _MyHomePageStateduaa extends State<MyHomePageduaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff204051),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
          ),
        ),
        backgroundColor: Color(0xff204051),
        title: new Text(
          'Muslim Bag',
          style: new TextStyle(
              // fontSize: 30,
              color: Color(0xffe88a60),
              fontStyle: FontStyle.italic,
              decorationColor: Color(0xffe88a60)),
        ),
        centerTitle: true,
        elevation: 20.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.black.withOpacity(0.7)),
        child: Drawer(
          child: Container(
            child: new ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: AssetImage('assets/img/logo.png'),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'language ',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: new Icon(
                    Icons.translate,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Coran',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    runApp(MyAppcoran());
                  },
                  leading: new Icon(
                    Icons.import_contacts,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Hadith',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    runApp(MyApphadith());
                  },
                  leading: new Icon(
                    Icons.book,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Duaà',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context); 
                  },
                  leading: new Icon(
                    Icons.account_balance,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Qibla',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    runApp(MyAppqiblah());
                  },
                  leading: new Icon(
                    Icons.explore,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Tasbih',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    runApp(MyApptasbih());
                  },
                  leading: new Icon(
                    Icons.add_circle,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Calender',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: new Icon(
                    Icons.insert_invitation,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'about us',
                    style: new TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Color(0xffe7dfd5).withOpacity(0.65),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    //perm_identity
                    //persone
                  },
                  leading: new Icon(
                    Icons.group,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomAppBar(
        elevation: 20.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 50.0,
        child: Container(
          padding: EdgeInsets.only(right: 100.0),
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      runApp(MyApphome());
                    }),
                padding: EdgeInsets.only(right: 20.0),
              ),
              IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    runApp(MyApphome());
                  }),
            ],
          ),
        ),
        color: Color(0xffe7dfd5),
      ),
    );
  }
}
