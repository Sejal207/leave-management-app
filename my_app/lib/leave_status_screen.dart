import 'package:flutter/material.dart';

class LeaveStatusScreen extends StatelessWidget {
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
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Leave Status',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Leave ID: 12345',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Type: Annual Leave',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'From: 01/01/2024',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'To: 10/01/2024',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Status: Approved',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.greenAccent,
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text('Back'),
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
