import 'package:bass_trans_ges/domaines/models/categorie_model.dart';
import 'package:bass_trans_ges/presenters/provider/category_provider/add_field_category_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryList = StateNotifierProvider<ListCategoryNotifier,List<CategoryModel>>((ref)=>ListCategoryNotifier());

