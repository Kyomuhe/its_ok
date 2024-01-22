import 'package:flutter/material.dart';
import 'norm2_account.dart';

class NormAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Normal Accounts'),
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
                      'Normal Accounts are Intended for individuals coping with depression, anxiety, and various mental health' 
                      ' challenges, as well as those who simply want to connect and engage in supportive conversations with others.'
                      'Inorder for you to fully express your self you can choose to be anaynomous or you can decide to use full details. '
                      'Even thou you are not a professional you can still help others',
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
                          MaterialPageRoute(builder: (context) => Norm2Account()),
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
