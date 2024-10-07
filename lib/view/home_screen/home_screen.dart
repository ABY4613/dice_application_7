// ignore_for_file: prefer_const_constructors, sort_child_properties_last



import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List dices =[
    " assets/images/d1.png",
     " assets/images/d2.png",
     "assets/images/d3.png",
     " assets/images/d4.png",

];
int? randomnumber ;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
          randomnumber=Random().nextInt(5);
         print(randomnumber);
          setState(() {
            
          });
          },
          child: Image.asset(
            height: 200,
            width: 200,
            randomnumber==null
            ? "assets/images/button.png"
            :dices[randomnumber!]
            ),
          
        ),
      )
     
    );
  }
}







































// class HomeScreen extends StatefulWidget {
//   @override
//   HomeScreen createState() => HomeScreen();
// }

// class home_screen extends State<HomeScreen> {
//   int _diceNumber = 1; 
//   void _rollDice() {
//     setState(() {
//       _diceNumber = Random().nextInt(6) + 1; // Generates a random number between 1 and 6
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Image path based on the current dice number
//     String imagePath = 'assets/images/dice$_diceNumber.png';

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dice Roller'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // Display the dice image based on the random number
//             Image.asset(
//               "assets/button.png",
//               width: 150,
//               height: 150,
//             ),
//             SizedBox(height: 20),
//             // Button to roll the dice
//             ElevatedButton(
//               onPressed: _rollDice,
//               child: Text('Roll Dice'),
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
