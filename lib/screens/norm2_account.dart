import 'package:flutter/material.dart';
import 'hide_account.dart'; 
import 'dont_account.dart'; 


class Norm2Account extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<Norm2Account> {
  String _selectedAccountType = 'hide';

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
                                title: Text('Hide Identity'),
                                leading: Radio(
                                  value: 'hide',
                                  groupValue: _selectedAccountType,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedAccountType = 'hide';
                                    });
                                  },
                                ),
                              ),
                              ListTile(
                                title: Text('Dont Hide Identity'),
                                leading: Radio(
                                  value: 'dont',
                                  groupValue: _selectedAccountType,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedAccountType = 'dont';
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Handle button press and navigate to the appropriate page
                              if (_selectedAccountType == 'hide') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HideAccount()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => DontAccount()),
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
