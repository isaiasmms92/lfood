import 'package:flutter/material.dart';

class PetStoreWidget extends StatefulWidget {
  const PetStoreWidget({super.key});

  @override
  State<PetStoreWidget> createState() => _PetStoreWidgetState();
}

class _PetStoreWidgetState extends State<PetStoreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('Pet Store'),
      ),
    );
  }
}
