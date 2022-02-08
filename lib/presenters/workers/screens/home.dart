// ignore_for_file: unnecessary_statements

import 'package:bass_trans_ges/domaines/models/categorie_model.dart';
import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/custorm_button.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/dashbord_screen.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/data/list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/side_menu.dart';
import 'package:bass_trans_ges/presenters/comon/widget/card_accounting.dart';
import 'package:bass_trans_ges/presenters/comon/widget/custorm_button_without_icon.dart';
import 'package:bass_trans_ges/presenters/comon/widget/header_list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/widget/list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/widget/row_list_worker.dart';
import 'package:bass_trans_ges/presenters/provider/category_provider/add_field_category_provider.dart';
import 'package:bass_trans_ges/presenters/provider/provider.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/input_text_form_fild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:line_icons/line_icons.dart';



class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _category;
  double? _price;
  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: dashBoardBackgroundColors,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(SvgIconsSource.backgroundImage),
                    fit: BoxFit.cover)
                //
                ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SideMenu(),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Stack(
                      children: [
                        DashBoard(),
                        Positioned(
                          left: 20,
                          top: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CardAccounting(
                                isTheFirstCard: true,
                                onCardTape: () {
                                  showAlertDialog(context);
                                },
                              ),
                              CardAccounting(
                                cardType: "depense",
                                onCardTape: () {
                                  print("depense");
                                },
                              ),
                              CardAccounting(
                                cardType: "utilisateur",
                                onCardTape: () {
                                  print("user");
                                },
                              ),

                              //RowWorker()
                              //...CardHomeItems.twoItems.map((cardHome)=>CardMenuDashboard(modelDashBoardMenuCard: cardHome,onCardTape: (){},)).toList()
                            ],
                          ),
                        ),
                        Positioned(
                            top: 600,
                            left: 20,
                            child: Container(
                              child: Text("Liste des sites"),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
              child: ListView(
                children: [
                  Column(
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
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Nom site',
                        labelText: "Nom du site",
                        suffixeIconField: Icons.domain,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Pays',
                        labelText: "Pays  chantier",
                        suffixeIconField: LineIcons.caretDown,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Ville',
                        labelText: "Ville  chantier",
                        suffixeIconField: LineIcons.caretDown,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Quartier',
                        labelText: "Quartier  chantier",
                        suffixeIconField: LineIcons.caretDown,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Categorie',
                        labelText: "Taper juste une lettre (exemple A)",
                        suffixeIconField: LineIcons.shapes,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      TextInputTextFormFieldWorker(
                        hasPrefixeIcone: false,
                        hasSuffixeIcon: true,
                        hintText: 'Montant horaire',
                        labelText: "Montant Horaire pour la catégrie ci-dessu",
                        suffixeIconField: Icons.money,
                        marginTopField: 30,
                        marginLeftField: 0,
                        marginBottomField: 0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustormButton(
                            buttonTitle: "Enregistrer",
                            onButtonPressed: () {},
                            colorButton: Colors.orange,
                            styleTextButon: bTitleButton,
                            iconButton: Icons.save_rounded,
                            iconButtonColor: Colors.white,
                          ),
                          Consumer(
                            builder: (context, watch, _) {
                              
                              final ListCategoryNotifier listCategory = context.read(categoryList.notifier);
                              return CustormButton(
                              buttonTitle: "Ajouter Autre Categorie",
                              onButtonPressed: () {
                                  
                                   listCategory.addCategory(CategoryModel(category: _category?? '', price: _price ?? 0));
                                
                              },
                              colorButton: Colors.grey,
                              styleTextButon: bTitleButton,
                              iconButton: Icons.add,
                              iconButtonColor: Colors.white,
                            );
                             },
                            
                          ),
                        ],
                      ),

                      Consumer(builder: ( context, watch,_) { 
                        final listCategory = watch(categoryList);
                        if(listCategory.length == 0){
                          return Text("aucun element envoyer");
                        }else{
                          return Text(listCategory.toString());
                        }
                        
                       },)
                      
                    ],
                  ),
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


