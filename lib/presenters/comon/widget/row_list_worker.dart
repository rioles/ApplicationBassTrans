import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/model/worker_models.dart';
import 'package:flutter/material.dart';

class RowWorker extends StatelessWidget {
  final Function()? onCardTape;
  final Worker worker;

  const RowWorker({Key? key, required this.worker, this.onCardTape})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: onCardTape,
      child: Container(
        width: mediaSize.width * 0.8,
        // height: 20.0,
        padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 15),
        margin: EdgeInsets.symmetric(vertical: 0.5, horizontal: 1.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
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
              //margin: EdgeInsets.only(top: 1),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(worker.imgUrlWorker,
                        width: 50, height: 50, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      worker.nameWorker + " " + worker.lastNameWorker,
                      style: bTableWorker,
                    ),
                  )
                ],
              ),
            ),
            Container(
              //margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(top: 12),
              child: Text(
                worker.typeWorker,
                style: bTableWorker,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  worker.phoneWorker,
                  style: bTableWorker,
                )),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                "${worker.reference}",
                style: bTableWorker,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  worker.garantWorker,
                  style: bTableWorker,
                )),
            Container(
              padding: EdgeInsets.only(top: 12),
              child: Text(
                worker.addressWorker,
                style: bTableWorker,
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
