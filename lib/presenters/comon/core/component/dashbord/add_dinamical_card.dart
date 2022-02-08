import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/custorm_button.dart';
import 'package:bass_trans_ges/presenters/comon/core/draw_list.dart';
import 'package:flutter/material.dart';

class CardBuilding extends StatefulWidget {
  CardBuilding({Key? key}) : super(key: key);

  @override
  _CardBuildingState createState() => _CardBuildingState();
}

class _CardBuildingState extends State<CardBuilding> {
  List<Widget> _cardList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _cardList.add(_card(context));
                  });
                },
              ),

               GridView.builder(
                 scrollDirection:Axis.vertical,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,
                   crossAxisSpacing: 20,
                   mainAxisSpacing: 20,childAspectRatio: 3/2
                   ),
                shrinkWrap: true,
                itemCount: _cardList.length,
                itemBuilder: (context, index) {
                return _cardList[index];
      },
    )
        ],
      ),
    );
  }

  Widget _card(BuildContext context) {
    return Card(
      elevation:0,
     
      //margin: EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(SvgIconsSource.citeMinisterielImage),
                  fit:BoxFit.cover
            )
          //
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 20, bottom: 3,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cité Ministériel',style: bCardTitle,),

                  PopupMenuButton(
                    icon: Icon(Icons.more_vert_outlined),
                    itemBuilder: (context)=>[
                      PopupMenuItem(
                        child: DrawList(
                  hoverColor:Colors.transparent,
                  title: "Ajouter un ouvrier",
                  color: Colors.grey,
                  svgSrc:SvgIconsSource.addIconPng,
                  listTitleColor: Colors.white,
                  svgHeight: 25,
                  onButtonPressed: () {}//=> selectedItem(context,3),
                ),
                        ),

                    PopupMenuItem(
                      child: DrawList(
                  hoverColor:Colors.transparent,
                  title: "Supprimer le site",
                  color: Colors.red,
                  svgSrc:SvgIconsSource.dropIcon,
                  listTitleColor: Colors.white,
                  svgHeight: 25,
                  onButtonPressed: () {}//=> selectedItem(context,3),
                ),
                      )
                        
                    ]
                    )
                ],
              )
              ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: RichText(
                overflow: TextOverflow.ellipsis,
                
                textAlign:TextAlign.start,
                text: TextSpan(
                  text: 'Cotonou ',
                  style: bSubtitleCard,
                  children: [
                    TextSpan(text: '(Benin)', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  ]
                )
                ),
            ),

           Padding(
             padding: const EdgeInsets.only(left: 8, right: 8),
             child: DrawList(
                  textStyle: bListWorkerStyle,
                  hoverColor:Colors.transparent,
                  title: "3000 ouvriers",
                  color: Colors.white,
                  svgSrc:SvgIconsSource.listWorkers,
                  listTitleColor: Colors.white,
                  svgHeight: 25,
                  onButtonPressed: () {}//=> selectedItem(context,3),
                ),
           ),

           
            Align(
              alignment: Alignment.center,
              child: CustormButton(buttonTitle: "Sélectioner ",colorButton: Colors.orange,styleTextButon: bTitleButton,iconButton: Icons.check_circle_outline_outlined,sizeIconButton: 30, iconButtonColor: Colors.white,verticalPaddingButton: 15,onButtonPressed: (){},)),
           

           
          ],
        ),
      ),
    );
  }
}