import 'package:bass_trans_ges/presenters/comon/config/theme.dart';
import 'package:bass_trans_ges/presenters/workers/screens/widget/register_form_worker.dart';
import 'package:flutter/material.dart';

class RegisterFormWorkerPage extends StatefulWidget {
  RegisterFormWorkerPage({Key? key}) : super(key: key);

  @override
  _RegisterFormWorkerState createState() => _RegisterFormWorkerState();
}

class _RegisterFormWorkerState extends State<RegisterFormWorkerPage> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15))),

                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: RegisterFormWorker(),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
