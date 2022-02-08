import 'package:flutter/material.dart';

class ModelDashBoardMenuCard{
  final String subTitleCard;
  final String titleCard;
  final String description;
  final IconData? iconButton;
  final String pathImageOrsvg;
  //final String pathImageOrsvg;
  final Color? iconButtonColor;
  final double? sizeImageOrSvg;
  final String extansion;
  final double? sizeIconButton;
  final Color colorImageOrSvg;

  final double widthCard;
  final double heightCard;

 const ModelDashBoardMenuCard(
      {Key? key,
      required this.subTitleCard,
      required this.titleCard,
      required this.description,
      this.iconButton,
      this.pathImageOrsvg = "",
      this.iconButtonColor,
      this.sizeImageOrSvg,
      this.extansion = "",
      this.widthCard = 350,
      this.sizeIconButton,
      this.colorImageOrSvg = Colors.transparent,
      this.heightCard = 300}) ;
}