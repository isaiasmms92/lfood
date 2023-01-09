import 'package:flutter/material.dart';

class PepperoniBottomBarItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final int countBadge;

  PepperoniBottomBarItem({
    required this.activeIcon,
    required this.label,
    required this.icon,
    this.countBadge = 0,
  });
}
