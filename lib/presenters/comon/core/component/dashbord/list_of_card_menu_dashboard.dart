import 'package:bass_trans_ges/presenters/comon/config/icons_source.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/model_card_home.dart';
import 'package:bass_trans_ges/presenters/workers/views_models/model_card_menu_dashboard.dart';
import 'package:flutter/material.dart';

//class ListCardDashboard{

List<ModelDashBoardMenuCard> card = [


  ModelDashBoardMenuCard(
          widthCard:200,
          heightCard: 100,
          description: "Tirer les fiches de paie, enregistrer les masses horaires ainsi que les montants horaires des ouvries",
          subTitleCard: "Gérer vos finances",
          titleCard: "Comptabilité",
          
          pathImageOrsvg: SvgIconsSource.waletIcon
          ),

          ModelDashBoardMenuCard(
          description:"Créer un nouveau site pour ajouter des ouvriers, gerer les comptes et autres",
          subTitleCard: "Créer un site",
          titleCard: "Site",
          iconButton: Icons.add,
          iconButtonColor: Colors.orange,
          sizeIconButton: 120,
         
          ),

            ModelDashBoardMenuCard(
          description: "Tirer les fiches de paie, enregistrer les masses horaires ainsi que les montants horaires des ouvries",
          subTitleCard: "Gérer vos dépense",
          titleCard: "Dépense",
          
          pathImageOrsvg: SvgIconsSource.cashDonate
          ),
          

          ModelDashBoardMenuCard(
          description: "Ajouter, supprimer, donner des droits à vos collaborateurs pour vous aider dans vos taches..!!",
          subTitleCard: " Créer des profil pour vos collaborateurs",
          titleCard: "Comptes",
          extansion: "svg",
          iconButton: Icons.person_outline,
          sizeIconButton: 100,
          iconButtonColor: Colors.orange,
          
          ),
];
//}