// ignore_for_file: dead_code

import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class RowInfoAccountingMenuItem {

  static const Map<String, List<MenuItem>> rowExpense = {
    "acconting": [printIconItem, saveIconItem, amountIconItem, moreIconItem],
    "header": [itemHeaderCard]
  };

  static const Map<String, List<MenuItem>> rowWorkSite = {
    "acconting": [siteCreate, addWorker, manageAccount, moreIconItem],
    "header": [itemHeaderCardAccount]
  };

 /* static const Map<String, List<MenuItem>> rowUser = {
    "acconting": [addUser, grant_user, deletUser, moreIconItem],
    "header": [itemHeaderUser]
  };*/

  static const Map<String, List<MenuItem>> rowUser = {
    "acconting": [addUser, grantUser, deletUser, moreIconItem],
    "header": [itemHeaderUser]
  };

  static const itemHeaderUser = MenuItem(
      icon: LineIcons.user,
      menuTitle: "Gérer les utilisateurs",
      isHeaderCard: true,
      buttonColor: Colors.teal,
      colorIcon: Colors.white);

  static const addUser = MenuItem(
      icon: Icons.person_add,
      menuTitle: 'Ajouter un utilisateur',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const deletUser = MenuItem(
      icon: Icons.person_remove_alt_1,
      menuTitle: 'Ajouter un utilisateur',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const grantUser = MenuItem(
      icon: Icons.accessibility_new,
      menuTitle: 'Donnez des droits',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const itemHeaderCardAccount = MenuItem(
      icon: Icons.apartment_sharp,
      menuTitle: "Creer un site",
      isHeaderCard: true,
      buttonColor: Colors.orange,
      colorIcon: Colors.white);

  static const siteCreate = MenuItem(
      icon: Icons.apartment_sharp,
      menuTitle: 'Créer un site',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const addWorker = MenuItem(
      icon: LineIcons.users,
      menuTitle: 'Créer des utilisateur',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const manageAccount = MenuItem(
      icon: LineIcons.userCircle,
      menuTitle: 'Gérer les comptes',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const itemHeaderCard = MenuItem(
      icon: LineIcons.wallet,
      menuTitle: "Gerer vos finances",
      isHeaderCard: true,
      buttonColor: Colors.blue,
      colorIcon: Colors.white);

  static const printIconItem = MenuItem(
      icon: LineIcons.print,
      menuTitle: 'Tirer les fichiers de paies',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const saveIconItem = MenuItem(
      icon: LineIcons.saveAlt,
      menuTitle: 'Enregistrer les masses horaires',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

  static const amountIconItem = MenuItem(
      icon: LineIcons.donate,
      menuTitle: 'Montant horaire des ouvriers',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);

      

  static const moreIconItem = MenuItem(
      icon: Icons.more_horiz,
      menuTitle: 'et plus',
      isHeaderCard: false,
      buttonColor: Colors.white,
      colorIcon: Colors.black);



  static Map<String, List<MenuItem>>? mapItem(String type) {
    switch (type) {
      case "depense":
        return rowExpense;
        break;

      case "site":
        return rowWorkSite;
        break;

      case "utilisateur":
        return rowUser;
        break;

      default:
        return rowExpense;
    }
  }
}
