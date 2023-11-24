// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize{
  @override
  Size get preferredSize => const Size.fromHeight(100);

  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Breakfast",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold
        )
      ),
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg', height: 20, width: 20)
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){},
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            width: 37,
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10)
            ),
            child: SvgPicture.asset('assets/icons/dots.svg', height: 5, width: 5)
          ),
        )
      ],
    );
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}