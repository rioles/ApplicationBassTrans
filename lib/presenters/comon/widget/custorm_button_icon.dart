import 'package:flutter/material.dart';

class CustormButtonIcon extends StatelessWidget {
  final Function()? onButtonTape;
  final double widthButton;
  final double heightButton;
  final IconData iconButton;
  final Color colorButton;
  final double iconSize;
  final double radiusButton;
  final Color iconColor;
  final double marginVertical;
  final double marginHorizontal;
  final Color colorBorderButton;
  final double widthBorder;
  
   BorderStyle borderStyleButton;
   CustormButtonIcon(
      {Key? key,
      this.widthBorder=1,
      this.onButtonTape,
      this.colorBorderButton:Colors.black38,
       this.borderStyleButton: BorderStyle.none,
      required this.marginHorizontal,
      required this.marginVertical,
      required this.iconColor,
      required this.widthButton,
      required this.heightButton,
      required this.iconButton,
      required this.colorButton,
      required this.iconSize,
      
      required this.radiusButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTape,
      child: Container(
        width: widthButton,
        height: heightButton,
        margin: EdgeInsets.symmetric(vertical: marginVertical, horizontal: marginHorizontal),
        child: Center(
            child: Icon(
          iconButton,
          size: iconSize,
          color: iconColor,
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radiusButton), color: colorButton,
             border: Border.all(color: colorBorderButton,width: widthBorder, style: borderStyleButton
            ), 
      )
      ),
    );
  }
}
