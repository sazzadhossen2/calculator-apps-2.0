
import 'package:calculator/const/constfrom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
final  String MText;
final Color bcolor;
final VoidCallback onpress;
 const Mybutton({super.key,required this.MText,this.bcolor=const Color(0xffa5a5a5), required this.onpress});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bcolor,
            ),
            child: Center(child: Text(MText)),
          ),
        ),
      ),
    );


  }
}
