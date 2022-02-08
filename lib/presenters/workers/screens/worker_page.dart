import 'package:bass_trans_ges/presenters/comon/config/colors.dart';
import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/dashbord/search_field.dart';
import 'package:bass_trans_ges/presenters/comon/core/component/side_menu.dart';
import 'package:bass_trans_ges/presenters/comon/widget/header_list_worker.dart';
import 'package:bass_trans_ges/presenters/comon/widget/list_worker.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/edit_form_worker.dart';
import 'package:flutter/material.dart';

class WorkerPage extends StatefulWidget {
  WorkerPage({Key? key}) : super(key: key);

  @override
  _WorkerPageState createState() => _WorkerPageState();
}

class _WorkerPageState extends State<WorkerPage> {
  @override
  Widget build(BuildContext context) {
    //final mediaSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: dashBoardBackgroundColors, 
        body:SafeArea(
          child:Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Expanded(
                  flex: 1,
                  child: SideMenu(),
                ),

                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: ListView(
                      
                      children: [
                        SearchField(),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: HeaderListWorker()
                          ),

                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text("100 ouvries au total",style: bTextNumberOfWorker,),
                                ),
                                SizedBox(
                                  width: 700,
                                  child: SearchField(hintTextSearch: "rechercher un ouvrier dans cette liste",)
                                  ),
                              ],
                            ),
                          ),
                        //ListWorkers(),
                        Container(
                          child: SingleChildScrollView(

                            child: ListWorkers(),
                            
                          ),
                        )
                      ],
                    ),
                  )
                  ),

                  Expanded(
                  flex: 2,
                  child: EditFormWorker()
                  )
              ]
            ),
            )
        )
      ),
    );
  }
}