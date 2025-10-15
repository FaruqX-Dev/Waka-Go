// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_import, sort_child_properties_last

import 'package:waka_go/data/notifiers.dart';
import 'package:waka_go/theme/theme_mode.dart';
import 'package:waka_go/views/pages/home_page.dart';
import 'package:waka_go/views/widgets/widgetTree.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _hidetext = true;
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).colorScheme.primary,

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
               // Image.asset('assets/images/bus_doodle.jpg',scale: 10,),
              ],
            ),
            SizedBox(height: 5,),  
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                prefixIcon: Icon(Icons.mail, color: Colors.grey),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: _hidetext,
              decoration: InputDecoration(
                hintText: 'password',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _hidetext = !_hidetext;
                    });
                  },
                  child: Icon(
                    _hidetext ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                onLoginPressed();
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Theme.of(context).colorScheme.secondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                minimumSize: Size(double.infinity, 40.0),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook,
                      size: 45,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.g_mobiledata_outlined,
                      color: Colors.red,
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Colors.greenAccent,
                  size: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Widgettree();
        },
      ),
    );
  }
}
