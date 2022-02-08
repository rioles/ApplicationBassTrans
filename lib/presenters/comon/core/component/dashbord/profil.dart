import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/data/menu_items.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/menu_item.dart';
import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  final String userName;
  final String pathImageUser;
  final Color colorContainer;
  final double borderRadius;
  final double imageWidth;
  final double imageheight;
  final double borderWidth;
  IconData? iconButton;
  BorderStyle? borderStyle;
  double spaceBetweenPictureAndTitle;
  TextStyle styleProfil;

  ProfilWidget(
      {Key? key,
      this.userName = "Ruddi Bassa",
      this.pathImageUser = SvgIconsSource.userImage,
      required this.colorContainer,
      this.borderRadius = 8,
      this.imageWidth = 50,
      this.imageheight = 50,
      this.borderWidth = 0,
      this.iconButton,
      required this.styleProfil,
      this.spaceBetweenPictureAndTitle=8,
      this.borderStyle = BorderStyle.solid,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    PopupMenuItem<MenuItem>buildItem(MenuItem item){
      
      return PopupMenuItem<MenuItem>(
        //padding: EdgeInsets.only(top: 50),
        value: item,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(item.icon,color: Colors.black,size: 20,),
          
          Text(item.menuTitle),
        ],
      ),
      
      );
    }

    void onSelected( BuildContext context,MenuItem item){

    }


    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      margin: EdgeInsets.only(left: 8),
      decoration: BoxDecoration(
          color: colorContainer,
          border: Border.all(color: indigoColor, width: borderWidth, style: borderStyle!),
          borderRadius: BorderRadius.circular(borderRadius)),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(pathImageUser,
                  width: imageWidth, height: imageheight, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.only(left: spaceBetweenPictureAndTitle),
              child: Text(
                userName,
                style: styleProfil,
                overflow: TextOverflow.ellipsis,
                
                
              ),
            ),
            if(iconButton!=null) InkWell(
              splashColor: Colors.white,
              splashFactory: NoSplash.splashFactory,
              onTap: () {},
              child: PopupMenuButton<MenuItem>(
                offset:Offset(7,42),
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),side: BorderSide(
                  color: Colors.orange,
                  style: BorderStyle.solid,
                  width: 1
                ),
                ),
                onSelected: (item)=>onSelected(context, item),
                 itemBuilder: (context) => [
                    ...MenuItems.itemFirst.map(buildItem).toList()
                ],
              
              child: Icon(iconButton)),
            )
            
          ],
        ),
      ),
    );
    
    // ignore: dead_code
    
  }
  
}
