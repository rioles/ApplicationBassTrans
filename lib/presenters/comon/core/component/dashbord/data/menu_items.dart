import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/menu_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItems {
  static const List<MenuItem> itemFirst=[
    itemSetting,alert
  ];

  static const List<MenuItem> itemSecond=[
    logout
  ];
    static const itemSetting = MenuItem(
      menuTitle: "Parametre", 
      icon: Icons.settings
      );

      static const logout = MenuItem(
      menuTitle: "quitter", 
      icon: Icons.logout_sharp
      );

       static const alert = MenuItem(
      menuTitle: "Notification", 
      icon: Icons.add_alert_rounded
      );
}