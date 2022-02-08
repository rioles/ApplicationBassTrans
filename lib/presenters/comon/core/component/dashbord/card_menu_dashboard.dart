import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/model_card_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CardMenuDashboard extends StatelessWidget {
  ModelDashBoardMenuCard modelDashBoardMenuCard ;
  final Function()? onCardTape;

   CardMenuDashboard(
      {Key? key,
      required this.modelDashBoardMenuCard, 
      this.onCardTape
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTape,
      child: Container(
          width: modelDashBoardMenuCard.widthCard,
          height: modelDashBoardMenuCard.heightCard,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(child: Text(modelDashBoardMenuCard.titleCard, style: bComptabiliteTitle)),
            Container(child: Text(modelDashBoardMenuCard.subTitleCard, style: bComptaSubtitleCard)),
            Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 4.0)
                      ]),
                  child: modelDashBoardMenuCard.iconButton != null
                      ? Icon(
                          modelDashBoardMenuCard.iconButton,
                          color: modelDashBoardMenuCard.iconButtonColor,
                          size: modelDashBoardMenuCard.sizeIconButton,
                        )
                      : modelDashBoardMenuCard.extansion == "svg"
                          ? SvgPicture.asset(
                              modelDashBoardMenuCard.pathImageOrsvg,
                              height: modelDashBoardMenuCard.sizeImageOrSvg,
                            )
                          : Image.asset(
                              modelDashBoardMenuCard.pathImageOrsvg,
                              height: modelDashBoardMenuCard.sizeImageOrSvg,
                            )),
            ),
            Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  modelDashBoardMenuCard.description,
                  overflow: TextOverflow.ellipsis,
                  style: bComptaSubtitleCard,
                  maxLines:3
                ))
          ])),
    );
  }
}
