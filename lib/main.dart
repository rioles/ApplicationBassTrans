import 'package:bass_trans_ges/presenters/workers/screens/home.dart';
import 'package:bass_trans_ges/app.dart';
import 'package:bass_trans_ges/presenters/startpage/screen/welcom_screen.dart';
import 'package:bass_trans_ges/presenters/utilisateur/login_utilisateur.dart';
import 'package:bass_trans_ges/presenters/workers/screens/register_form_worker_page.dart';
import 'package:bass_trans_ges/presenters/workers/screens/worker_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: App()));}