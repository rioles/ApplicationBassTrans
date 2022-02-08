import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/widget/custorm_button_without_icon.dart';
import 'package:flutter/material.dart';

class WelcomScreen extends StatefulWidget {
  WelcomScreen({Key? key}) : super(key: key);

  @override
  _WelcomScreenState createState() => _WelcomScreenState();
}

class _WelcomScreenState extends State<WelcomScreen> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
        home: Scaffold(
            backgroundColor: dashBoardBackgroundColors,
            body: SafeArea(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 7,
                      
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    SvgIconsSource.formWokerRegisterLeftImage),
                                fit: BoxFit.cover)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Container(
                               margin: EdgeInsets.only(top: 30,left: 30),
                              width: 150,
                              //height: 100,
                              child: Image.asset(SvgIconsSource.logoBtB),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                                ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 300,
                            ),
                            
                            Container(
                              margin: EdgeInsets.only(top: 40, bottom: 20),
                              child: Center(
                                  child: Text(
                                "Bienvenu chez BASS-TRANS-GEST",
                                style: bWelcomSideBarText,
                              )),
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "BASS-TRANS-GEST est une application moderne de gestion ",
                                style: bWelcomSideBarDescription,
                              )),
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                " de ses chantiens ainsi que ces ouvriers et ses dépenses",
                                style: bWelcomSideBarDescription,
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: Center(
                                  child: Text(
                                "Pour commencer vous devrez vous inscrire avec quelleque informations et ensuite ",
                                style: bWelcomSideBarDescription,
                              )),
                            ),
                            Center(
                                child: Text(
                              " ajouter vos collaborateurs, pour vous aider dans vos tache",
                              style: bWelcomSideBarDescription,
                            )),
                            Center(
                                child: Text(
                              " Cliquer sur le bouton Let's start pour demarer",
                              style: bWelcomSideBarDescription,
                            )),
                            CustormButtonTextCenterWiyhoutIcon(
                              colorButton: Color(0xff00856f),
                              verticalMargin: 30,
                              horizontalMargin: 160,
                              horizontalPadding: 5,
                              title: "LET'S START",
                              radiusButton: 7,
                              verticalPadding: 5,
                              onTapeMethode: () {},
                              textStyle: bWelcomSideBarDescription,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
