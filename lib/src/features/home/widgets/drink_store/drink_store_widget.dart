import 'package:flutter/material.dart';

class DrinkStoreWidget extends StatefulWidget {
  const DrinkStoreWidget({super.key});

  @override
  State<DrinkStoreWidget> createState() => _DrinkStoreWidgetState();
}

class _DrinkStoreWidgetState extends State<DrinkStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Drink Store'),
      ),
    );
  }
}
