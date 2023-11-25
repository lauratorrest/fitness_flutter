// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitness/models/diet_model.dart';

class DietsRecommendations extends StatelessWidget {
  const DietsRecommendations({
    super.key,
    required this.diets,
  });

  final List<DietModel> diets;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Recommendation\nfor Diet',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600
            )
          ),
        ),

        SizedBox(height: 15),

        Container(
          padding: EdgeInsets.only(left: 20),
          height: 240,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 25),
            itemCount: diets.length,
            itemBuilder: ( _ , index){
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: diets[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset('${Constants.ICONS_PATH}${diets[index].iconPath}'),
                    Column(
                      children: [
                        Text(diets[index].name),
                        Text(
                          '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                          style: TextStyle(
                            color: Color(0xff786F72),
                            fontSize: 13,
                            fontWeight: FontWeight.w400
                          )
                        )
                      ],
                    ),
                    
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              diets[index].viewIsSelected ? Color(0xff9DCEFF) : Colors.transparent,
                              diets[index].viewIsSelected ? Color(0xff92A3FD) : Colors.transparent
                            ]
                          ),
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          'View',
                          style: TextStyle(
                            color: diets[index].viewIsSelected ? Colors.white : Color(0xffC58BF2),
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                          ),
                        ),
                      ),
                    )
                  ]
                ),
              );
            },
          )
        )
      ]
    );
  }
}

