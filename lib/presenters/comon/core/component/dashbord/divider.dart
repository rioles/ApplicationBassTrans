import 'package:flutter/material.dart';

class CustormDivider extends StatelessWidget {
  final double horizontalPadding;
  final double verticalPadding;
  final Color color;
  final double height;

  const CustormDivider(
      {Key? key,
      required this.color,
      required this.height,
      this.horizontalPadding = 0,
      this.verticalPadding = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: horizontalPadding, horizontal: verticalPadding),
      child: Divider(
        color: color, 
        height: height,
        thickness: 1,
        ),
    );
  }
}

/*child: Divider(
                          color: Colors.red,
                          thickness: 1,
                          height: heigth,
                        ),*/