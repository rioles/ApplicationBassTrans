import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/data/row_info_accounting.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/divider.dart';
import 'package:bass_trans_ges/presenters/comon/widget/custorm_button_without_icon.dart';
import 'package:bass_trans_ges/presenters/comon/widget/row_item_card_menu.dart';
import 'package:flutter/material.dart';

class CardAccounting extends StatelessWidget {
  final String cardType;
  final bool isTheFirstCard;
  final Function()? onCardTape;
  //rowExpense
  const CardAccounting({Key? key, this.cardType ="site",this.isTheFirstCard = false,required this.onCardTape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Container(
      width: mediaSize.width*0.2,
      margin:  isTheFirstCard ?EdgeInsets.symmetric(vertical:10,horizontal: 0):EdgeInsets.symmetric(vertical:10,horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
              style: BorderStyle.solid, color: Colors.black12, width: 1)
          //shape: BorderRadius()
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...RowInfoAccountingMenuItem.mapItem(cardType)!["header"]!
              .map((itemRow)=>RowItemCardMenu(menuItem: itemRow,))
              .toList(),
          ...RowInfoAccountingMenuItem.mapItem(cardType)!["acconting"]!
              .map((itemRow)=>RowItemCardMenu(menuItem: itemRow,))
              .toList(),
          CustormDivider(
            color: Colors.black12,
            height: 1,
            horizontalPadding: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              CustormButtonTextCenterWiyhoutIcon(
                onTapeMethode:onCardTape,
                verticalMargin: 10,
                horizontalMargin: 10,
                verticalPadding: 2,
                horizontalPadding: 20,
                colorButton: indigoColor,
                radiusButton: 30,
                title: "Parcourir",
                textStyle: bTitleButton,
              ),
            ],
          )
        ],
      ),
    );
  }
}
