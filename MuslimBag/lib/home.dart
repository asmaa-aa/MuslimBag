import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslim_bag/coran.dart';
import 'package:muslim_bag/duaa.dart';
import 'package:muslim_bag/hadith.dart';
import 'package:muslim_bag/qibla.dart';
import 'package:muslim_bag/tasbih.dart';
import 'package:flutter/rendering.dart';

class MyApphome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' home',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
                    'Notification',
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
                    Icons.notifications_active,
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
                  },
                  leading: new Icon(
                    Icons.group,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Exit',
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
                    Icons.exit_to_app,
                    color: Color(0xffe7dfd5).withOpacity(0.65),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
// ****** card 1 *****

              GestureDetector(
                onTap: () {
                  runApp(MyAppcoran());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Image.asset(
                          'assets/img/quran.png',
                          width: 245.0,
                          height: 160.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        ' القــرآن الكريم و تفسيــره',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 2 *****

              GestureDetector(
                onTap: () {
                  runApp(MyApphadith());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //  padding: EdgeInsets.only(top: .0, bottom: 2.0 ),
                        child: Image.asset(
                          'assets/img/hadith.png',
                          width: 170.0,
                          height: 170.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'الحديــث النبوي الشريف',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 3 *****

              GestureDetector(
                onTap: () {
                  runApp(MyAppqiblah());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10.0, bottom: 8.0),
                        child: Image.asset(
                          'assets/img/qibla.png',
                          width: 150.0,
                          height: 150.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'القِـبلــة',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 4 *****

              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 8.0, bottom: 6.0),
                        child: Image.asset(
                          'assets/img/calender.png',
                          width: 150.0,
                          height: 150.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'التقويم الهجري',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 5 *****

              GestureDetector(
                onTap: () {
                  runApp(MyAppduaa());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Image.asset(
                          'assets/img/prayer.png',
                          width: 150.0,
                          height: 150.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'الدعـــاء',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 6 *****

              GestureDetector(
                onTap: () {
                  runApp(MyApptasbih());
                },
                child: Container(
                  padding: EdgeInsets.only(top: 10.0),
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 280.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        bottomRight: Radius.circular(70.0)),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xff204051),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Image.asset(
                          'assets/img/tasbih.png',
                          width: 150.0,
                          height: 150.0,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                      Text(
                        'التسبيــح',
                        style: new TextStyle(
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Color(0xffe7dfd5).withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

// ****** card 7 *****

              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  width: 260.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      bottomRight: Radius.circular(70.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff223344),
                        Color(0xffe88a60),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(6, 6),
                        blurRadius: 20,
                      )
                    ],
                  ),
                  child: new Center(),
                ),
              ),
            ],
          ),
        ),
      ),

      // ************************************* the flotting button : *****************************

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          runApp(MyApphome());
        },
        tooltip: 'top',
        child: Icon(
          Icons.arrow_upward,
          color: Color(0xffe88a60),
        ),
        elevation: 20.0,
        backgroundColor: Color(0xff204051),
      ),

      // ************************************* the bottom bar : **********************************

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
                    tooltip: 'back',
                    onPressed: () {
                      runApp(MyApphome());
                    }),
                padding: EdgeInsets.only(right: 20.0),
              ),
              IconButton(
                  icon: Icon(Icons.home),
                  tooltip: 'Home',
                  onPressed: () {
                  }),
            ],
          ),
        ),
        color: Color(0xffe7dfd5),
      ),
    );
  }
}
