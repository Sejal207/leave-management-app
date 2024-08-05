import 'package:flutter/material.dart';

class LeaveSubmittedScreen extends StatelessWidget {
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
                    'Leave Submitted',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[300],
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Back to Home'),
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
