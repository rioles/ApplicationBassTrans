import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawList extends StatelessWidget {
  final String title;
  final String extension;
  final String svgSrc;
  final Function()? onButtonPressed;
  final Color color;
  final Color listTitleColor;
  final double svgHeight;
  final IconData? iconButton;
  final double? iconSize;
  final Color hoverColor;
  final TextStyle? textStyle;
  const DrawList(
      {Key? key,
      required this.title,
      this.svgSrc = "",
      required this.onButtonPressed,
      required this.color,
      required this.hoverColor,
      this.svgHeight = 25,
      this.iconButton,
      this.iconSize,
      this.extension ="",
      this.textStyle = bMenuTextStyle,
      required this.listTitleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        buildListTilt(
            listTitleColor: listTitleColor,
            color: color,
            svgHeight: svgHeight,
            title: title,
            onButtonPressed: onButtonPressed,
            iconButton:iconButton,
            iconSize:iconSize,
            svgSrc:svgSrc,
            extension:extension
            );
  }

  Widget buildListTilt(
      {String title = "",
      final Function()? onButtonPressed,
      Color? color,
      required Color listTitleColor,
      double? svgHeight,
      IconData? iconButton,
      double? iconSize,
      String svgSrc = "",
      String extension = ""
      }) {
    return iconButton == null
        ? ListTile(
            horizontalTitleGap: 0.0,
            onTap: onButtonPressed,
            leading:extension=="svg" ? SvgPicture.asset(
              svgSrc,
              color: color,
              height: svgHeight,
              //semanticsLabel: 'A red up arrow'
            ): Image.asset(
              svgSrc,
              color: color,
              height: svgHeight,
              //semanticsLabel: 'A red up arrow'
            ),
            title: Title(
              child: Text(title, style: textStyle),
              color: listTitleColor,
            ),
          )
        : ListTile(
            horizontalTitleGap: 0.0,
            onTap: onButtonPressed,
            leading: Icon(
                iconButton,
                color: color,
                size: iconSize,
              ),
            title: Title(
              color: listTitleColor,
              child: Text(
                title,
                style: textStyle,
              ),
            ),
          );
  }
}
