import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/data/list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/widget/header_list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/widget/row_list_worker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListWorkers extends StatelessWidget {
  const ListWorkers({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
         children: [
      ...ListWorker.listWorker
            .map((itemRow)=>RowWorker(worker:itemRow,onCardTape: (){print(itemRow.idWorker);},))
            .toList(),
    ],
    );
     
    
  }
}