import 'package:flutter/material.dart';
import 'package:tugas3/homepage.dart';
import 'package:tugas3/regis.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final String username = "ferdi";
  final String password = "123456";
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/logo.png"),
            width: 500,
            height: 200,
            ),
            TextFormField(
              controller: _emailController,
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide()
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
                ),
                hintText: 'Masukan Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
                ),
                focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(),
                ),
                hintText: 'Masukan Password',
              ),
            ),
            SizedBox(height: 24.0),
            Container(
              width: 500,
              height: 45,
          child:   
           ElevatedButton(
              onPressed: () {
                 if (_emailController.text == username && _passwordController.text == password) {
                       Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainApp()),
                    );
                    }
              },
              child: Text('Login'),
            ),
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Belum punya akun?'),
                TextButton(
                  onPressed: () {
                       Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    ); 
                  },
                  child: Text('Daftar sekarang'),
                ),
              ],
            ),
          ],
      )
     )
    );
  }
}


