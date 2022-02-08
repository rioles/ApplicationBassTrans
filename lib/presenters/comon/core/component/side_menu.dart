import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/core/draw_list.dart';
import 'package:bass_trans_ges/presenters/workers/screens/worker_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: Material(
        color: Colors.white,
        child: ListView(
          //padding: EdgeInsets.only(left: 20),
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                child: Image.asset(
                  "assets/images/logo/logo_btbR.png",
                  width: 50,
                ),
                decoration: BoxDecoration(
                  
                    color: dashBoardBackgroundColors,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15.0))),
              ),
            ),
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(7),
                color: Colors.grey,
                strokeWidth: 1,
                
                
                padding: EdgeInsets.all(4),
                dashPattern: [5, 3],
        
                child: Align(
                  alignment: Alignment.center,
                  child: DrawList(
                    hoverColor: indigoColor,
                    title: "créer un ouvrier",
                    color: Colors.grey,
                    iconButton: Icons.add,
                    listTitleColor: Colors.grey,
                    iconSize: 30,
                    onButtonPressed: () {}//=> selectedItem(context,0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DrawList(
              hoverColor: indigoColor,
              title: "Tableau de bord",
              color: Colors.grey,
              svgSrc: SvgIconsSource.dashBordPngIcon,
              listTitleColor: Colors.grey,
              svgHeight: 20,
              onButtonPressed: () {}//=> selectedItem(context,1),
            ),
            SizedBox(
              height: 10,
            ),
            DrawList(
              hoverColor:indigoColor,
              extension: "svg",
              title: "Contact",
              color: Colors.grey,
              svgSrc: SvgIconsSource.userProfilSvgIcon,
              listTitleColor: Colors.grey,
              onButtonPressed: () {}//=> selectedItem(context,2),
            ),
            SizedBox(
              height: 10,
            ),
            DrawList(
              hoverColor:indigoColor,
              title: "Listes ouvriers",
              color: Colors.grey,
              svgSrc:SvgIconsSource.listWorkers,
              listTitleColor: Colors.grey,
              svgHeight: 25,
              onButtonPressed: () {}//=> selectedItem(context,3),
            ),
            SizedBox(
              height: 10,
            ),
            DrawList(
              hoverColor: indigoColor,
              title: "créer un site",
              color: Colors.grey,
              svgSrc:SvgIconsSource.addIconPng,
              listTitleColor: Colors.grey,
              svgHeight: 20,
              onButtonPressed:() => selectedItem(context,4),
            ),
            DrawList(
              hoverColor: indigoColor,
              extension: "svg",
              title: "Liste des sites",
              color: Colors.grey,
              svgSrc:SvgIconsSource.dashBordSvgIcon,
              listTitleColor: Colors.grey,
              svgHeight: 20,
              onButtonPressed: (){} //selectedItem(context,5),
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
    switch(index){
     case 0:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;

   case 1:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;

  case 2:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;

  case 3:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;

  case 4:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;

  case 5:
     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => WorkerPage()),
  );
  break;
    
    }
  }
}
