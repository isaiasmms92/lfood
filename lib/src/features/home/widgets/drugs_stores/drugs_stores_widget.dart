import 'package:flutter/material.dart';

class DrugsStoresWidget extends StatefulWidget {
  const DrugsStoresWidget({super.key});

  @override
  State<DrugsStoresWidget> createState() => _DrugsStoresWidgetState();
}

class _DrugsStoresWidgetState extends State<DrugsStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Drugs Stores'),
      ),
    );
  }
}
