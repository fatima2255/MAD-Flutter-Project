import 'package:flutter/material.dart';
import 'main_page.dart';

void main() {
  runApp(FoodOrderingApp());
}

class FoodOrderingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Ordering App'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/delivery.jpg',
              width: 200.0, // Adjust the size as needed
              height: 200.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to our Food Ordering App',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login To Your Account',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            // Add login form here
            LoginForm(),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
          ),
          validator: (value) {
            // Add email validation if needed
          },
        ),
        SizedBox(height: 10.0),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          validator: (value) {
            // Add password validation if needed
          },
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main');
          },
          child: Text('Login'),
        ),
      ],
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Register',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            // Add signup form here
            SignupForm(),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: fullNameController,
          decoration: InputDecoration(
            labelText: 'Full Name',
          ),
          validator: (value) {
            // Add validation if needed
          },
        ),
        SizedBox(height: 10.0),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
          ),
          validator: (value) {
            // Add email validation if needed
          },
        ),
        
        SizedBox(height: 10.0),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
          ),
          validator: (value) {
            // Add password validation if needed
          },
        ),
        
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            // Add signup logic using the controllers
          },
          child: Text('Signup'),
        ),
      ],
    );
  }
}
