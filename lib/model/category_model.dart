import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categoryModels = [
      CategoryModel(
        name: 'Salad',
        iconPath: 'plate.svg',
        boxColor: Color(0xff9DCEFF)
      ),

      CategoryModel(
        name: 'Cake',
        iconPath: 'pancakes.svg',
        boxColor: Color(0xffEEA4CE)
      ),

      CategoryModel(
        name: 'Pie',
        iconPath: 'pie.svg',
        boxColor: Color(0xff9DCEFF)
      ),

      CategoryModel(
        name: 'Smoothies',
        iconPath: 'orange-snacks.svg',
        boxColor: Color(0xffEEA4CE)
      )
    ];

    return categoryModels;
  }
}