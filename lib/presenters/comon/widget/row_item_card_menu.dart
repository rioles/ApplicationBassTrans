import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/menu_item.dart';
import 'package:bass_trans_ges/presenters/comon/widget/custorm_button_icon.dart';
import 'package:flutter/material.dart';

class RowItemCardMenu extends StatelessWidget {
  MenuItem menuItem;
   RowItemCardMenu({Key? key, required this.menuItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Row(
      children: [
        
        CustormButtonIcon(
            colorButton: menuItem.buttonColor,
            heightButton: menuItem.isHeaderCard? mediaSize.height * 0.06:mediaSize.height * 0.04,
            widthButton: menuItem.isHeaderCard? mediaSize.height * 0.06:mediaSize.height * 0.04,
            iconButton: menuItem.icon,
            iconSize: menuItem.isHeaderCard? mediaSize.width * 0.02:mediaSize.width * 0.01,
            iconColor: menuItem.colorIcon,
            radiusButton: menuItem.isHeaderCard? mediaSize.width * 0.004:mediaSize.width * 0.05,   
            marginHorizontal:  mediaSize.width * 0.01,
            marginVertical: mediaSize.width * 0.01,
            borderStyleButton: menuItem.isHeaderCard? BorderStyle.none:BorderStyle.solid,
          ),
          Text(
            menuItem.menuTitle,
            style: menuItem.isHeaderCard?bCardDashbordTitle:bCardDashbordItem,
          ),
      ],
    );
  }
}