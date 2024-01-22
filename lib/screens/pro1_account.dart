import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Pro1Account extends StatefulWidget {
  @override
  _Pro1AccountState createState() => _Pro1AccountState();
}

class _Pro1AccountState extends State<Pro1Account> {
  XFile? _image;
  bool? _willingToHelpForFree;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Profession',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Tell us more about your problem (optional)',
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pick Profile Picture:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        ElevatedButton(
                          onPressed: _pickImage,
                          child: Text('Pick Image'),
                        ),
                        _image == null
                            ? Text('No image selected.')
                            : Image.file(File(_image!.path)),
                      ],
                    ),
                    SizedBox(height: 20.0),

                    Text(
                      'Are you willing to help people for free?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RadioListTile<bool>(
                      title: Text('Yes'),
                      value: true,
                      groupValue: _willingToHelpForFree,
                      onChanged: (bool? value) {
                        setState(() {
                          _willingToHelpForFree = value;
                        });
                      },
                    ),
                    RadioListTile<bool>(
                      title: Text('No'),
                      value: false,
                      groupValue: _willingToHelpForFree,
                      onChanged: (bool? value) {
                        setState(() {
                          _willingToHelpForFree = value;
                        });
                      },
                    ),

                    SizedBox(height: 20.0),

                    ElevatedButton(
                      onPressed: () {
                        // Add your create account logic here
                      },
                      child: Text('Create Account'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
