import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'leave_management_screen.dart';
import 'apply_for_leave_screen.dart';
import 'leave_submitted_screen.dart';
import 'leave_status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/leave-management': (context) => LeaveManagementScreen(),
        '/apply-for-leave': (context) => ApplyForLeaveScreen(),
        '/leave-submitted': (context) => LeaveSubmittedScreen(),
        '/leave-status': (context) => LeaveStatusScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
