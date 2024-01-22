import 'package:flutter/material.dart';
import 'prof_account.dart'; 
import 'norm_account.dart'; 


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _selectedAccountType = 'professional';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: IntrinsicWidth(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, Colors.white],
                ),
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Account Registration',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Form(
                      child: Column(
                        children: [
                          Text('Select Account Type'),
                          SizedBox(height: 10.0),
                          Column(
                            children: [
                              ListTile(
                                title: Text('Professional Account'),
                                leading: Radio(
                                  value: 'professional',
                                  groupValue: _selectedAccountType,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedAccountType = 'professional';
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Normal Account'),
                                leading: Radio(
                                  value: 'normal',
                                  groupValue: _selectedAccountType,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedAccountType = 'normal';
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press and navigate to the appropriate page
                              if (_selectedAccountType == 'professional') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ProfAccount()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NormAccount()),
                                );

                                // Handle navigation for normal account type
                              }
                            },
                            child: Text('Next'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
