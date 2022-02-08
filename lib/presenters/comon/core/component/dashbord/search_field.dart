import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  double widthIconSearch;
  double heightIconSearch;
  String hintTextSearch;
  Color colorIconSearch;
  double topLeftRadius;
  double topRightRadius;
  double bottomLeftRadius;
  double bottomRightRadius;
  SearchField({Key? key, this.widthIconSearch=25, this.heightIconSearch=25,this.hintTextSearch="effectuer une recherche",this.colorIconSearch =indigoColor,
  this.bottomLeftRadius=10,this.bottomRightRadius=10,this.topLeftRadius=10,this.topRightRadius=10}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  //late FocusNode myFocusNode;
  bool checkColor = false;
   var myFocusNode = FocusNode();
  
 @override
  void initState() {
    
    myFocusNode.addListener((){
      if(myFocusNode.hasFocus){
        setState(() {
          checkColor = true;
        });
        
      }else{
        setState(() {
          checkColor =false;
        });
        
      }
      print(myFocusNode.hasFocus);
    });
    super.initState();
   

    
  }

  void dispose(){
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20,top: 20),
      child: TextFormField(
    focusNode: myFocusNode,
    autofocus: checkColor,
    decoration: InputDecoration(
      hintText: widget.hintTextSearch,
      hintStyle: bHintTextStyle,
      filled: true,
      fillColor: checkColor? Colors.white : Colors.transparent,
      border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(widget.topLeftRadius),topRight:Radius.circular(widget.topRightRadius),bottomLeft: Radius.circular(widget.bottomLeftRadius),bottomRight: Radius.circular(widget.bottomRightRadius))),
      prefixIcon: InkWell(
          onTap: () {
            setState(() {
              checkColor =  true;
            });
          },
          child: Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.all(10),
              //child: Image.asset("assets/icons/Sicon-search.png"),
              child: Image.asset(
                "assets/icons/icon-search.png",
                color: indigoColor,
                width: widget.widthIconSearch,
                height: widget.heightIconSearch,
              ))),
    ),
      ),
    );
  }
}
