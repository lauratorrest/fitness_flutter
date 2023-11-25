// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fitness/models/popular_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_model.dart';
import 'package:fitness/widgets/custom_appbar.dart';
import 'package:fitness/widgets/custom_search_bar.dart';
import 'package:fitness/widgets/cotegories_section.dart';
import 'package:fitness/widgets/diets_recommendations.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];
  List<PopularDietsModel> popularDiets = [];

  void _getInitInfo(){
    categories = CategoryModel.getCategories();
    diets = DietModel.getDiets();
    popularDiets = PopularDietsModel.getPopularDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getInitInfo();
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),

          SizedBox(height: 40),

          CategoriesSection(categories: categories),

          SizedBox(height: 40),

          DietsRecommendations(diets: diets),

          

        ],
      )
    );
  }
}
