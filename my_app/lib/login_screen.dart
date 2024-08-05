import 'package:flutter/material.dart';
import 'leave_management_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF11193E),
      body: Stack(
        children: [
          // Background circles
          Positioned(
            top: -50,
            left: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey.withOpacity(0.3),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -50,
            child: CircleAvatar(
              radius: 150,
              backgroundColor: Colors.blue.withOpacity(0.4),
            ),
          ),
          Positioned(
            top: 100,
            right: -70,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.grey.withOpacity(0.3),
            ),
          ),
          Positioned(
            bottom: 50,
            left: -50,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue.withOpacity(0.3),
            ),
          ),
          // Heading at the top with a border
          Positioned(
            top: -20,
            left: 30,
            right: 30,
            child: Container(
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300, width: 2),
              ),
              child: Text(
                'PALMBOOK  LEAVE  PORTAL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.indigo.shade700,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.5,
                ),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 120), // Adjust the height as needed
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Hey, You knocked?',
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'May we know, who is it?',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 45),
                        TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.blue.shade900),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.blue.shade900),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 40),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LeaveManagementScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text('Login'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
