import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustormButton extends StatelessWidget {
  final Function()? onButtonPressed;
  final String extansion;
  final String buttonTitle;
  final IconData? iconButton;
  final double? buttonRadius;
  final double? widthButton;
  final String pathImageOrsvg;
  final Color colorButton;
  final TextStyle styleTextButon;
  final double? sizeIconButton;
  final double? sizeImage;
  final Color? iconButtonColor;
  final BorderStyle bordeSideButton;
  final Color colorBorderSide;
  final double widthBorderSideButton;
  final double verticalPaddingButton;
  final double horizontalPaddingButton;
  final Color colorImageOrSvg;
  final double sizeImageOrSvg;
  const CustormButton(
      {Key? key,
      required this.buttonTitle,
      required this.onButtonPressed,
      this.iconButton,
      this.buttonRadius,
      required this.colorButton,
      this.iconButtonColor,
      this.pathImageOrsvg = "",
      this.sizeIconButton,
      this.sizeImage,
      required this.styleTextButon,
      this.widthButton,
      this.bordeSideButton = BorderStyle.none,
      this.widthBorderSideButton = 1,
      this.colorBorderSide = Colors.black12,
      this.horizontalPaddingButton = 20,
      this.verticalPaddingButton = 15,
      this.extansion ="svg",
      this.sizeImageOrSvg=15,
      this.colorImageOrSvg = Colors.black87})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
      child: TextButton(
          style: TextButton.styleFrom(
            alignment: Alignment.center,
              textStyle: TextStyle(color: Colors.black),
              side: BorderSide(
                style: bordeSideButton,
                width: widthBorderSideButton,
                color: colorBorderSide,
              ),
              
              //border: BorderSide(style: BorderStyle.solid),
              padding: EdgeInsets.symmetric(
                  vertical: verticalPaddingButton,
                  horizontal: horizontalPaddingButton
                  ),
              backgroundColor: colorButton),
          onPressed: onButtonPressed,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(buttonTitle, maxLines: 3,overflow: TextOverflow.ellipsis,style: styleTextButon),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child:iconButton !=null? Icon(iconButton, color: iconButtonColor,size: sizeIconButton,):
                extansion=="svg"?  SvgPicture.asset(
                  pathImageOrsvg,
                  color:colorImageOrSvg,
                  height:sizeImageOrSvg,
                ):Image.asset(
                  pathImageOrsvg,
                  color:colorImageOrSvg,
                  height:sizeImageOrSvg,
                ),
              )
            ],
          )),
    );
  }
}
