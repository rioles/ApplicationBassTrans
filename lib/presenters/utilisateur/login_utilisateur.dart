import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/custorm_button.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/input_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LoginUser extends StatefulWidget {
  LoginUser({Key? key}) : super(key: key);

  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),

                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(SvgIconsSource.citeMinisterielImage),
                    fit: BoxFit.cover)
                //
                ),
                  child: Container(
                    margin: EdgeInsets.only(left: 300,right: 300),
                    
                    child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 300,),
                         Container(
                              // margin: EdgeInsets.only(top: 30,left: 30),
                              width: 150,
                              //height: 100,
                              child: Image.asset(SvgIconsSource.logoBtB),
                            ),

                            TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Nom utilisateur",
                    labelText: "Nom utilisateur",
                    suffixeIconField: LineIcons.user
                  ),

                      TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Mot de passe",
                    labelText: "Mot de passe",
                    suffixeIconField: LineIcons.tag
                  ),


                  Row(
                    children: [
                      Spacer(),
                      CustormButton(
                              buttonTitle: "Valider",
                              colorButton: Colors.orange,
                              onButtonPressed: () {},
                              styleTextButon: bTitleButton,
                              iconButton: LineIcons.arrowRight,
                              sizeIconButton: 20,
                              iconButtonColor: Colors.white,
                              buttonRadius: 20,
                            ),
                    ],
                  )

                      ],
                    ),
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}