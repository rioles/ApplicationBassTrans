// ignore_for_file: dead_code

import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/custorm_button.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/divider.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/profil.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/search_field.dart';
import 'package:bass_trans_ges/presenters/comon/core/draw_list.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SearchField(),

                //search box
               /* Container(
                  //padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),

                  child: Column(
                    children: [
                      CustormDivider(color: Colors.red,height: 1, horizontalPadding: 15, verticalPadding: 15,),
                      DrawList(
                        hoverColor: indigoColor,
                        title: "Je recherche ...",
                        color: Colors.grey,
                        iconButton: Icons.local_offer_outlined,
                        listTitleColor: Colors.grey,
                        svgHeight: 25,
                        onButtonPressed: () {},
                        textStyle: bMenuTextStyleSearch,
                        //=> selectedItem(context,3),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Row(
                          children: [
                            CustormButton(
                                onButtonPressed: () {},
                                buttonTitle: "Fichiers",
                                colorButton: Colors.grey,
                                styleTextButon: bTagButton,
                                iconButton: Icons.layers_sharp,
                                sizeIconButton: 20,
                                iconButtonColor: Colors.white,
                                horizontalPaddingButton: 7,
                                verticalPaddingButton: 10),
                            CustormButton(
                                onButtonPressed: () {},
                                buttonTitle: "Ouvriers",
                                colorButton: Colors.grey,
                                styleTextButon: bTagButton,
                                iconButton: Icons.person,
                                sizeIconButton: 20,
                                iconButtonColor: Colors.white,
                                horizontalPaddingButton: 7,
                                verticalPaddingButton: 10),
                            CustormButton(
                                onButtonPressed: () {
                                  print("ooook");
                                },
                                buttonTitle: "Dépenses",
                                colorButton: Colors.grey,
                                styleTextButon: bTagButton,
                                iconButton: Icons.minimize,
                                sizeIconButton: 20,
                                iconButtonColor: Colors.white,
                                horizontalPaddingButton: 7,
                                verticalPaddingButton: 10),
                          ],
                        ),
                      ),
                      DrawList(
                          hoverColor: indigoColor,
                          extension: "svg",
                          title: "Ouvries",
                          color: Colors.grey,
                          svgSrc: SvgIconsSource.userProfilSvgIcon,
                          svgHeight: 25,
                          listTitleColor: Colors.grey,
                          onButtonPressed: () {}
                          //=> selectedItem(context,2),
                          ),
                      Container(
                          child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: FittedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProfilWidget(
                                    styleProfil: bProfilTextStyle,
                                    imageWidth: 40,
                                    imageheight: 40,
                                    colorContainer: Colors.transparent,
                                    borderWidth: 0,
                                    borderStyle: BorderStyle.none,
                                    spaceBetweenPictureAndTitle: 20,
                                    pathImageUser: SvgIconsSource.userImage1,
                                    userName: "blacko ramazanigjhgef",
                                  ),
                                  ProfilWidget(
                                      styleProfil: bProfilTextStyle,
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage2,
                                      userName: "Rodolpho Sanchesedfjbjhbh"),
                                  ProfilWidget(
                                      styleProfil: bProfilTextStyle,
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage3,
                                      userName: "Asalfojbkjbd"),
                                  ProfilWidget(
                                      styleProfil: bProfilTextStyle,
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage4,
                                      userName: "Rodolphe GBEETOvkjdvbkjbjk"),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: FittedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ProfilWidget(
                                      styleProfil: bProfilTextStyle,
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage4,
                                      userName: "Rodolphe GBEETOvkjdvbkjbjk"),
                                  ProfilWidget(
                                    styleProfil: bProfilTextStyle,
                                    imageWidth: 40,
                                    imageheight: 40,
                                    colorContainer: Colors.transparent,
                                    borderWidth: 0,
                                    borderStyle: BorderStyle.none,
                                    spaceBetweenPictureAndTitle: 20,
                                    pathImageUser: SvgIconsSource.userImage7,
                                    userName: "blacko ramazanigjhgef",
                                  ),
                                  ProfilWidget(
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      styleProfil: bProfilTextStyle,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage2,
                                      userName: "Rodolpho Sanchesedfjbjhbh"),
                                  ProfilWidget(
                                      styleProfil: bProfilTextStyle,
                                      imageWidth: 40,
                                      imageheight: 40,
                                      colorContainer: Colors.transparent,
                                      borderWidth: 0,
                                      borderStyle: BorderStyle.none,
                                      spaceBetweenPictureAndTitle: 20,
                                      pathImageUser: SvgIconsSource.userImage8,
                                      userName: "Asalfojbkjbd"),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Center(
                                  child: Text("voir plus (96 autres contacts)",
                                      style: bTextInfoItemBottomSearchCard)),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                )*/
              ],
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.only(top:8),
               child: Row(
                 children:[
                    CustormButton(
                onButtonPressed: () {},
                buttonTitle: "Imprimer",
                colorButton: Colors.orange,
                styleTextButon: bTitleButton,
                iconButton: Icons.print_rounded,
                sizeIconButton: 30,
                iconButtonColor: Colors.white,
            ),
               CustormButton(
                onButtonPressed: () {},
                buttonTitle: "Importer",
                colorButton: Colors.orange,
                styleTextButon: bTitleButton,
                iconButton: Icons.cloud_upload_outlined,
                sizeIconButton: 30,
                iconButtonColor: Colors.white,
            ),
            ProfilWidget(
                borderStyle: BorderStyle.solid,
                colorContainer: Colors.white,
                iconButton: Icons.keyboard_arrow_down,
                styleProfil: bProfilTextStyle,
            )
                 ]
               ),
             ),
           
           
            
          ]),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    final mediaWidth = MediaQuery.of(context).size.width;
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      contentPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      //title: Text("AlertDialog"),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
        width: mediaSize.width * .60,
        height: mediaSize.height * .65,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage(SvgIconsSource.formWokerRegisterLeftImage),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(left: 25, top: 10, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.close, color: Colors.orange)),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nom site',
                          labelStyle: bHintTextStyle,
                          hintText: "Nom du site",
                          hintStyle: bHintTextStyle,
                          fillColor: dashBoardBackgroundColors,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 30),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              style: BorderStyle.solid,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(Icons.domain),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nom site',
                          labelStyle: bHintTextStyle,
                          hintText: "Nom du site",
                          hintStyle: bHintTextStyle,
                          fillColor: dashBoardBackgroundColors,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 30),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              style: BorderStyle.solid,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(Icons.domain),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nom site',
                          labelStyle: bHintTextStyle,
                          hintText: "Nom du site",
                          hintStyle: bHintTextStyle,
                          fillColor: dashBoardBackgroundColors,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 30),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              style: BorderStyle.solid,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(Icons.domain),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nom site',
                          labelStyle: bHintTextStyle,
                          hintText: "Nom du site",
                          hintStyle: bHintTextStyle,
                          fillColor: dashBoardBackgroundColors,
                          filled: true,
                          contentPadding: EdgeInsets.only(left: 30),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              style: BorderStyle.solid,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Container(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(Icons.domain),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
