import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/custorm_button.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/profil.dart';
import 'package:bass_trans_ges/presenters/comon/widget/custorm_button_icon.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/input_text_form_fild.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/ronded_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

class RegisterFormWorker extends StatefulWidget {
  RegisterFormWorker({Key? key}) : super(key: key);

  @override
  _RegisterFormWorkerState createState() => _RegisterFormWorkerState();
}

class _RegisterFormWorkerState extends State<RegisterFormWorker> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: ListView(
          children:[ Container(
              margin: EdgeInsets.only(top: 70, left: 300, right: 300),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Text("Enregistrer un ouvrier",
                          style: bMenuTextStyle)),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            CustormRondedImage(
                              pathImage: SvgIconsSource.birdImg,
                              widthBorderStyleSize: 1,
                            ),
                            Positioned(
                              top: 55,
                              left: 55,
                              child: CustormButtonIcon(
                                iconButton: Icons.add,
                                colorButton: Colors.white,
                                heightButton: 40,
                                widthButton: 40,
                                iconColor: Colors.orange,
                                iconSize: 25,
                                marginHorizontal: 0,
                                marginVertical: 0,
                                radiusButton: 50,
                                borderStyleButton: BorderStyle.none,
                                colorBorderButton: Colors.white,
                                onButtonTape: () {
                                  print("clicked");
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            TextInputTextFormFieldWorker(
                              hasPrefixeIcone: false,
                              hasSuffixeIcon: true,
                              hintText: "Nom de l'ouvrier",
                              labelText: "Nom ouvrier",
                              suffixeIconField: LineIcons.user,
                            ),
                            TextInputTextFormFieldWorker(
                              hasPrefixeIcone: false,
                              hasSuffixeIcon: true,
                              hintText: "Prenom de l'ouvrier",
                              labelText: "Prenom ouvrier",
                              suffixeIconField: LineIcons.user,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Type",
                    labelText: "Type d'ouvrier",
                    suffixeIconField: Icons.arrow_drop_down,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Telephone ",
                    labelText: "Telephone ouvrier",
                    suffixeIconField: LineIcons.phone,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Sexe",
                    labelText: "Sexe ouvrier",
                    suffixeIconField: Icons.arrow_drop_down,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Adresse",
                    labelText: "Adresse ouvrier",
                    suffixeIconField: LineIcons.addressCard,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Garant",
                    labelText: "Garant ouvrier",
                    suffixeIconField: LineIcons.user,
                  ),
                  TextInputTextFormFieldWorker(
                    hasPrefixeIcone: false,
                    hasSuffixeIcon: true,
                    hintText: "Reférence",
                    labelText: "Reférence ouvrier",
                    suffixeIconField: LineIcons.tags,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        CustormButton(
                          buttonTitle: "Sauvegarder",
                          colorButton: Colors.orange,
                          onButtonPressed: () {},
                          styleTextButon: bTitleButton,
                          iconButton: LineIcons.saveAlt,
                          sizeIconButton: 20,
                          iconButtonColor: Colors.white,
                          buttonRadius: 20,
                        )
                      ],
                      )
                ],
              ),
              ),
              ]
        ),
      ),
    );
  }
}
