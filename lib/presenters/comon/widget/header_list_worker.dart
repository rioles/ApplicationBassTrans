import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/divider.dart';
import 'package:flutter/material.dart';

class HeaderListWorker extends StatelessWidget {
  const HeaderListWorker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(right: 2, left: 2),
      //margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
      width: mediaSize.width * 0.80,
      child: Column(
        children: [
          Container(
            child: Table(
              columnWidths: {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(2),
                5: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    Container(
                      //margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Nom ouvrier",
                        style: bMenuTextStyle,
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Type ouvrier",
                        style: bMenuTextStyle,
                      ),
                    ),
                    Container(
                     // margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Telephone ouvrier",
                        style: bMenuTextStyle,
                      ),
                    ),
                    Container(
                     // margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Reference ouvrier",
                        style: bMenuTextStyle,
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Garant",
                        style: bMenuTextStyle,
                      ),
                    ),
                    Container(
                     // margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Adresse",
                        style: bMenuTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
           
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20,top: 30),
            child: CustormDivider(
              color: Colors.black54,
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
