import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem{
  final String menuTitle;
  final IconData icon;
  final bool isHeaderCard;
  final Color colorIcon;
  final Color buttonColor;
  final String typeMenu;

  const MenuItem({
    this.isHeaderCard=false,
    this.colorIcon= Colors.transparent,
    this.buttonColor = Colors.transparent,
    this.typeMenu="",
    required this.menuTitle,
    required this.icon
  });
}