import 'package:flutter/material.dart';
import 'package:quiz2_1_175/pages/birthday.dart';
import 'package:quiz2_1_175/pages/about.dart';
import 'package:quiz2_1_175/pages/Gratitude.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ), // use MaterialApp
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void _onBottomNavigationBarTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Bar'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.face,
                size: 48.0,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              accountName: Text('Sandy Smith'),
              accountEmail: Text('sandy.smith@domainname.com'),
              otherAccountsPictures: <Widget>[
                Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                )
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.cake),
              title: Text('Birthdays'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Birthdays(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.sentiment_neutral_rounded),
              title: Text('Gratitude'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Gratitude(
                      radioGroupValue: 1,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onBottomNavigationBarTap,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cake),
              label: 'Birthday',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_neutral_rounded),
              label: 'Gratitude',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About',
            ),
          ],
          selectedIconTheme: IconThemeData(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.black)),
      body: pages[_currentIndex],
    );
  }

  final List<Widget> pages = [
    HomePage(),
    Birthdays(),
    Gratitude(
      radioGroupValue: 1,
    ),
    About(),
  ];
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Icon(
          Icons.house,
          size: 120.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
