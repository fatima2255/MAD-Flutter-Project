// main_page.dart
import 'add_menu_item_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Ordering App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 2, 17, 99),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 2, 17, 99),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 2, 17, 99),
                ),
                child: Text(
                  'You deserve the best, and we deliver! Order Now',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),

              ListTile(
                leading: Icon(
                  Icons.menu_book,
                  color: Colors.white,
                ),
                title: Text(
                  'Add Menu Item',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddMenuItemPage()),
                );
                },
              ),
              
              ListTile(
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.white,
                ),
                title: Text(
                  'View Menu',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle 'View Menu' option
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                title: Text(
                  'View Cart',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle 'View Cart' option
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Love your Hunger!',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            // Add more widgets or content as needed
          ],
        ),
      ),
    );
  }
}
