import 'package:flutter/material.dart';

class CustormButtonTextCenterWiyhoutIcon extends StatelessWidget {
    final Function()? onTapeMethode;
  final String title;
  final double verticalPadding;
  final double horizontalPadding;
  final double verticalMargin;
  final double horizontalMargin;
  final Color colorButton;
  final TextStyle textStyle;
  final double radiusButton;

  const CustormButtonTextCenterWiyhoutIcon(
      {Key? key,
      required this.onTapeMethode,
      required this.title,
      required this.verticalPadding,
      required this.horizontalPadding,
      required this.horizontalMargin,
      required this.verticalMargin,
      required this.colorButton,
      required this.textStyle,
      required this.radiusButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapeMethode,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        margin: EdgeInsets.symmetric(vertical: verticalMargin, horizontal: horizontalMargin),
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(radiusButton),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
