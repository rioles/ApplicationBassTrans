import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:flutter/material.dart';

class CustormRondedImage extends StatelessWidget {
  double widtContainer;
  double heightContainer;
  String pathImage;
  double radius;
  BorderStyle? borderStyle;
  Color colorBorderStyle;
  double widthBorderStyleSize;
 CustormRondedImage({Key? key,
 this.widthBorderStyleSize = 2,
  this.borderStyle = BorderStyle.solid,
  this.heightContainer = 150,
  this.widtContainer = 150,
  this.pathImage ="",
  this.radius = 100,
  this.colorBorderStyle=Colors.black45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widtContainer,
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
            color: colorBorderStyle, width: widthBorderStyleSize, style: borderStyle!),
      ),
      child: ClipOval(
        child: Image.asset(SvgIconsSource.birdImg, fit: BoxFit.cover),
      ),
    );
  }
}
