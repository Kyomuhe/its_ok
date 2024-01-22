import 'package:flutter/material.dart';
import 'screens/sign_up.dart';
import 'screens/login_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Its Okay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 33, 150, 243)),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(title: 'Welcome to Its Okay platform where you are no longer alone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),

        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              // Add your action for "Read Stories" here
            },
            child: Text('Read Stories'),
          ),
        ],
      ),
      //backgroundColor: Color.fromARGB(255, 8, 8, 8),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/kay.png',
              fit: BoxFit.cover,
            ),
          ),
          // Your existing UI
          Align(
            alignment: Alignment.center,
            child: IntrinsicWidth(
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.transparent, Colors.transparent], // Set transparent colors for the gradient
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'It\'s Okay Platform',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                                );

                              // Add your sign-in logic here
                            },
                            child: Text('Login'),
                          ),
                          SizedBox(width: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUp()),
                                );
                                },
                                child: Text('Sign up'),
                                ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Here, you\'ll find a community of individuals who share your\n'
                        'experiences and experts who specialize in the challenges\n'
                        'you\'re facing, all ready to help you—for free.',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
