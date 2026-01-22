import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'dashboards/resident_dashboard.dart';
import 'dashboards/admin_dashboard.dart';
import 'dashboards/collector_dashboard.dart';

void main() {
  runApp(const SmartWasteApp());
}

class SmartWasteApp extends StatelessWidget {
  const SmartWasteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartWaste',
      home: const LoginScreen(),
      routes: {
        '/resident': (context) => const ResidentDashboard(),
        '/admin': (context) => const AdminDashboard(),
        '/collector': (context) => const CollectorDashboard(),
      },
    );
  }
}
