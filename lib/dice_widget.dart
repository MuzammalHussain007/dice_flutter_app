import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

 class DiceWidget extends StatefulWidget {
   const DiceWidget({Key? key}) : super(key: key);

   @override
   State<DiceWidget> createState() => _DiceWidgetState();
 }

 class _DiceWidgetState extends State<DiceWidget> {
   var diceNumber = 1;
    @override
   Widget build(BuildContext context) {

     return Scaffold(
       backgroundColor: Colors.red,
       appBar: AppBar(
         title: Text('Dicee'),
         backgroundColor: Colors.red,
       ),
       body: Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,

           children:   [
             Expanded(
               child: FlatButton(
                 onPressed: (){
                   setState(() {
                     diceNumber  = Random().nextInt(6)+1;
                     print('left Dice $diceNumber');
                   });
                 },
                 child:     Image.asset(
                     'images/dice$diceNumber.png',
                 ),
               ),
             ),
             Expanded(
               child: FlatButton(
                 onPressed: () {
                   setState(() {
                     diceNumber  = Random().nextInt(6)+1;
                     print('Right Dice $diceNumber');
                   });
                 },
                 child:Image.asset(
                     'images/dice$diceNumber.png'
                 ),
               ),
             ),

           ],
         ),
       ),
     );
   }
 }

