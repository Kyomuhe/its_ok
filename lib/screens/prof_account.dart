import 'package:flutter/material.dart';
import 'pro1_account.dart';

class ProfAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Professional Accounts'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dep2.PNG'), // Replace with the correct image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromRGBO(0, 0, 0, 0.5), // Blackish and transparent color
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Account Information',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Column(
                  children: [
                    Text(
                      'Professional Accounts are Designed for individuals with specialized expertise, such as therapists and those experienced in '
                      'helping individuals with challenges like depression, anxiety, and related issues. '
                      'Please know that on this platform all services you will offer are free and voluntary. You are not allowed to charge anyone.',
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pro1Account()),
                                );

                        // Handle button press
                      },
                      child: Text('Continue'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
