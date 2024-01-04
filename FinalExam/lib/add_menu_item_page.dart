// add_menu_item_page.dart

import 'package:flutter/material.dart';

class AddMenuItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Add Menu Item',style: TextStyle(
        color: Colors.white, // Set text color to white
    ),),
        backgroundColor:  Color.fromARGB(255, 2, 17, 99)
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: AddMenuItemForm(),
      ),
    );
  }
}

class AddMenuItemForm extends StatefulWidget {
  @override
  _AddMenuItemFormState createState() => _AddMenuItemFormState();
}

class _AddMenuItemFormState extends State<AddMenuItemForm> {
  final TextEditingController dishIdController = TextEditingController();
  final TextEditingController dishNameController = TextEditingController();
  final TextEditingController dishPriceController = TextEditingController();
  final TextEditingController dishTypeController = TextEditingController();
  final TextEditingController restaurantIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: dishIdController,
          decoration: InputDecoration(
            labelText: 'Dish ID',
            border: OutlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 15.0),
        TextFormField(
          controller: dishNameController,
          decoration: InputDecoration(
            labelText: 'Dish Name',
            border: OutlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 15.0),
        TextFormField(
          controller: dishPriceController,
          decoration: InputDecoration(
            labelText: 'Dish Price',
            border: OutlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 15.0),
        TextFormField(
          controller: dishTypeController,
          decoration: InputDecoration(
            labelText: 'Dish Type',
            border: OutlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 15.0),
        TextFormField(
          controller: restaurantIdController,
          decoration: InputDecoration(
            labelText: 'Restaurant ID',
            border: OutlineInputBorder(),
          ),
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Add logic to save menu item (use the controllers' text)
            // For simplicity, you can print the values for now
            print('Dish ID: ${dishIdController.text}');
            print('Dish Name: ${dishNameController.text}');
            print('Dish Price: ${dishPriceController.text}');
            print('Dish Type: ${dishTypeController.text}');
            print('Restaurant ID: ${restaurantIdController.text}');
          },
          style: ElevatedButton.styleFrom(
            primary:Color.fromARGB(255, 2, 17, 99),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Add Menu Item',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10.0),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous page
          },
          child: Text(
            'Go Back',
            style: TextStyle(
              color: Color.fromARGB(255, 2, 17, 99),
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
