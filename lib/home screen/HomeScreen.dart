
import 'package:calculator/buttom/Mybuttom.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userInput="";

  var anwser="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

body:
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
  child: Column(
    children: [
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

          Align(
              alignment: Alignment.bottomRight,
              child: Text(userInput.toString(),style:const TextStyle(fontSize: 30,color: Colors.white),)),
       const  SizedBox(height: 10,),
          Text(anwser.toString(),style:const TextStyle(fontSize: 30,color: Colors.white),)
        ],),
      ),
      Expanded(
        flex: 2,
        child: Column(
          children: [
            Row(
              children: [
                Mybutton(MText: 'AC', onpress: () {
                  userInput='';
                  anwser='';
                  setState(() {

                  });
                },),
                Mybutton(MText: '+/-', onpress: () {
                  userInput+='+/-';
                  setState(() {

                  });
                },),
                Mybutton(MText: '%', onpress: () {
                  userInput+='%';
                  setState(() {

                  });
                },),
                Mybutton(MText: '/', onpress: () {
                  userInput+='/';
                  setState(() {

                  });
                },bcolor:const Color(0xffffa00a),)
              ],
            ),
            Row(
              children: [
                Mybutton(MText: '7', onpress: () {
                  userInput+='7';
                  setState(() {
                    
                  });
                },),
                Mybutton(MText: '8', onpress: () {
                  userInput+='8';
                  setState(() {

                  });
                },),
                Mybutton(MText: '9', onpress: () {
                  userInput+='9';
                setState(() {

                }); },),
                Mybutton(MText: 'x', onpress: () {
                  userInput+='x';
                  setState(() {

                  });

                },bcolor:const Color(0xffffa00a))
              ],
            ),
            Row(
              children: [
                Mybutton(MText: '4', onpress: () {
                  userInput+='4';
                  setState(() {

                  });
                },),
                Mybutton(MText: '5', onpress: () {
                  userInput+='5';
                  setState(() {

                  });
                },),
                Mybutton(MText: '6', onpress: () {
                  userInput+='6';
                  setState(() {

                  });
                },),
                Mybutton(MText: '-', onpress: () {
                  userInput+='-';
                  setState(() {

                  });
                },bcolor:const Color(0xffffa00a))
              ],
            ),
            Row(
              children: [
                Mybutton(MText: '1', onpress: () {
                  userInput+='1';
                  setState(() {

                  });
                },),
                Mybutton(MText: '2', onpress: () {
                  userInput+='2';
                  setState(() {

                  });
                },),
                Mybutton(MText: '3', onpress: () {
                  userInput+='3';
                  setState(() {

                  });
                },),
                Mybutton(MText: '+', onpress: () {
                  userInput+='+';
                  setState(() {

                  });

                },bcolor:const Color(0xffffa00a))
              ],
            ),
            Row(
              children: [
                Mybutton(MText: '0', onpress: () {
                  userInput+='0';
                  setState(() {

                  });
                },),
                Mybutton(MText: '.', onpress: () {
                  userInput+='.';
                  setState(() {

                  });
                },),
                Mybutton(MText: 'DEL', onpress: () {
                  userInput =userInput.substring(0,userInput.length-1);
                  setState(() {

                  });
                },),
                Mybutton(MText: '=', onpress: () {
                  equalpers();
                  setState(() {

                  });
                },bcolor:const Color(0xffffa00a))
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),

    );
  }

void   equalpers(){
    String finaluserinput =userInput.replaceAll('x', '*');
    Parser p =Parser();
    Expression expression =p.parse(finaluserinput);
    ContextModel contextModel =ContextModel();
    double eval =expression.evaluate(EvaluationType.REAL, contextModel);
    anwser =eval.toString();
}

}
