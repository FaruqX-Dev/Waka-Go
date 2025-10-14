// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

//import 'package:lottie/lottie.dart';
import 'package:newerapp/theme/theme_mode.dart';
import 'package:newerapp/views/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'package:newerapp/views/pages/sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
    
      children:[ Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bus_terminal_2.jpg'),fit: BoxFit.cover),
      ),
    
      ),Container(decoration: BoxDecoration(
        color: Colors.transparent.withValues(alpha: .6)
      ),
      ),Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'WakaGo',
                style: TextStyle(
                  color:Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 50.0),
              ),
              GestureDetector(
                 onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.surface
                  ),
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      
                        fontSize: 20.0, color: Colors.white, letterSpacing: 2.0),
                  ),
                ),
              ),
          
             
            ],
          ),
        ),
      ),
      ]
    );
  }
}
