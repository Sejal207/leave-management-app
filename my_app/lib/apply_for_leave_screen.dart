import 'package:flutter/material.dart';
import 'leave_submitted_screen.dart';

class ApplyForLeaveScreen extends StatelessWidget {
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
                    'Apply for Leave',
                    style: TextStyle(
                      fontSize: 34,
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
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Leave Type',
                            labelStyle: TextStyle(color: Colors.blue.shade900),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          items: [
                            DropdownMenuItem(
                                value: 'Sick Leave', child: Text('Sick Leave')),
                            DropdownMenuItem(
                                value: 'Casual Leave',
                                child: Text('Casual Leave')),
                            DropdownMenuItem(
                                value: 'Paid Leave', child: Text('Paid Leave')),
                            DropdownMenuItem(
                                value: 'Maternity Leave',
                                child: Text('Maternity Leave')),
                            DropdownMenuItem(
                                value: 'Paternity Leave',
                                child: Text('Paternity Leave')),
                            DropdownMenuItem(
                                value: 'Unpaid Leave',
                                child: Text('Unpaid Leave')),
                          ],
                          onChanged: (value) {
                            print(value);
                          },
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'From Date',
                            labelStyle: TextStyle(color: Colors.blue.shade900),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'To Date',
                            labelStyle: TextStyle(color: Colors.blue.shade900),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LeaveSubmittedScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text('Submit'),
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
