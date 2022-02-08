import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:flutter/material.dart';

class WorkSiteForm extends StatelessWidget {
  const WorkSiteForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showAlertDialog(
       context
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