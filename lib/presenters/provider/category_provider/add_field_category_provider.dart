import 'package:bass_trans_ges/domaines/models/categorie_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListCategoryNotifier extends StateNotifier<List<CategoryModel>>{
  ListCategoryNotifier() : super([]);

  void addCategory(CategoryModel categoryModel){
    state = [...state,categoryModel];
  }

  void deleteCategory(CategoryModel categoryModel){
    state = state.where((_categoryModel) => _categoryModel.category!=categoryModel.category).toList();
  }
}