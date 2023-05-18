import 'package:flutter/material.dart';
import 'package:shrine/model/product_repository.dart';
import 'package:intl/intl.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class MyHomePage extends StatelessWidget {
  final Category category;
   const MyHomePage({this.category = Category.all, Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
  
    return  AsymmetricView(products: ProductsRepository.loadProducts(category));
  }
}

