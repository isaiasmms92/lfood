import 'package:flutter/material.dart';
import 'package:lfood/src/features/dashboard/view/pages/dashboard_page.dart';

void main() {
  runApp(const LFoodApp());
}

class LFoodApp extends StatelessWidget {
  const LFoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}
