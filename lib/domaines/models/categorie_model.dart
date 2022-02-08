import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable{
  final String category;
  final double price;

 const CategoryModel({this.category='', this.price=0.0});

 CategoryModel copy({
     String? category,
     double? price,
  }) =>
      CategoryModel(
        category: category ?? this.category,
        price: price ?? this.price,
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
    category,
    price,
    
  ];
}