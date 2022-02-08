import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class TextInputTextFormFieldWorker extends StatelessWidget {
  String hintText;
  String labelText;
  IconData? suffixeIconField;
  IconData? prefixeIconField;
  bool hasPrefixeIcone;
  bool hasSuffixeIcon;
  bool filledState;
  double contentLeftPadding;
  double contentRightPadding;
  double contentTopPadding;
  double contentBottomPadding;
  double borderRadius;
  BorderStyle focusBorderStyle;
  Color colorFocuseBorder;
  Color colorFilled;
  double marginTopField;
  double marginRightField;
  double marginBottomField;
  double marginLeftField;
  //double borderRadius;
 /* 
  
  TextStyle hintStyle;
  TextStyle labelStyle;
  
  
  
  
 
  Color colorIconPrefixe;
  Color colorIconSuffixe;*/

   TextInputTextFormFieldWorker({Key? key,
   required this.hintText ,
   required this.labelText,
   this.suffixeIconField,
   this.prefixeIconField,
   required this.hasSuffixeIcon,
   required this.hasPrefixeIcone,
   this.filledState =true,
   this.contentBottomPadding = 0,
   this.contentLeftPadding=30,
   this.contentRightPadding=0,
   this.contentTopPadding=0,
   this.borderRadius =30,
   this.focusBorderStyle=BorderStyle.solid,
   this.colorFocuseBorder=Colors.blue,
   this.colorFilled=dashBoardBackgroundColors,
   this.marginTopField=0,

   this.marginRightField=20,
  this.marginBottomField=30,
  this.marginLeftField=0,
   /*this.colorIconSuffixe = Colors.black54,
   required this.hasSuffixeIcon,
   required this.hasPrefixeIcone,
   this.borderRadius =30,
   
   
   this.colorIconPrefixe=Colors.black87,
   this.filledState = true,
   
   required this.hintText ,
   required this.labelText,
   this.hintStyle = bHintTextStyle,
   this.labelStyle = bHintTextStyle,
    this.suffixeIconField,
   this.prefixeIconField,
   */
   
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: marginBottomField, left: marginLeftField, right: marginRightField,top: marginTopField),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: bHintTextStyle,
          hintText: hintText,
          hintStyle: bHintTextStyle,
          fillColor: colorFilled,
          filled: filledState,
          contentPadding: EdgeInsets.only(left: contentLeftPadding,right:contentRightPadding,bottom: contentBottomPadding,top: contentTopPadding),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              style: BorderStyle.solid,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          
           suffixIcon: hasSuffixeIcon == true ? Container(
            padding: EdgeInsets.only(right: 15),
            child: Icon(suffixeIconField,),
          ):Container(),
         /* prefixIcon: hasPrefixeIcone == true ? Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Icon(prefixeIconField,),
          ):Container()*/
      ),
      ),
    );
  }
}

