import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class EditFormWorker extends StatefulWidget {
  const EditFormWorker({Key? key}) : super(key: key);

  @override
  _EditFormWorkerState createState() => _EditFormWorkerState();
}

class _EditFormWorkerState extends State<EditFormWorker> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: 
              [
                Container(
              decoration: BoxDecoration(
                color: Colors.white,
                //borderRadius: BorderRadius.circular(15)
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15), topLeft: Radius.circular(15)),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Text("Quitter",style: bTextInfoItemBottomSearchCard,)
                            ),
                          InkWell(
                            onTap: (){},
                            child: Text("Modifier",style: bTextInfoItemBottomSearchCard,)
                            ),
      
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Center(
                        child:ClipOval(
                          child: Image.asset(SvgIconsSource.userImage3,
                              width: 70, height: 70, fit: BoxFit.cover),
                        ),
                      ),
                    ),
                      
                     Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nom ouvrier',
                          labelStyle: bHintTextStyle,
                          hintText: "Nom de l'ouvrier",
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
                            child: Icon(LineIcons.user),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Prenom ouvrier',
                          labelStyle: bHintTextStyle,
                          hintText: "Prénom de l'ouvrier",
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
                            child: Icon(LineIcons.user),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Telephone',
                          labelStyle: bHintTextStyle,
                          hintText: "Telephone de l'ouvrier",
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
                            child: Icon(LineIcons.phone),
                          ),
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Reference',
                          labelStyle: bHintTextStyle,
                          hintText: "Reference de l'ouvrier",
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
                            child: Icon(LineIcons.tag),
                          ),
                        ),
                      ),
                    ),
                    

                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Garant',
                          labelStyle: bHintTextStyle,
                          hintText: "Garant de l'ouvrier",
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
                            child: Icon(LineIcons.user),
                          ),
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Domicile',
                          labelStyle: bHintTextStyle,
                          hintText: "Domicile de l'ouvrier",
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
                            child: Icon(LineIcons.addressCardAlt),
                          ),
                        ),
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 30,bottom: 30,left: 20,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Ttpe ouvrier',
                          labelStyle: bHintTextStyle,
                          hintText: "Type de l'ouvrier",
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
                            child: Icon(LineIcons.alternateArrowCircleDownAlt),
                          ),
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: (){print('grrr');},
                      child: Container(
                        margin: EdgeInsets.only(top:30, bottom: 30),
                        child: Text("Supprimer l'ouvrier",style: bDeleteWorker,),
                      ),
                    )

                  ],
                ),
              ),),
            ],
      ),
    );
  }
}
