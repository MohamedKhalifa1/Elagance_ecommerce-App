import 'package:elagance/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../authentication_screen/sign_in_screen.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return  Scaffold(
  // backgroundColor: HexColor('#F3F3F3'),
  body: Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/background.png',),fit: BoxFit.cover,
      )
    ),
    // height: MediaQuery.of(context).size.height,
    // width: MediaQuery.of(context).size.width,
    child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Elogo(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Text(
                  'ELAGANCE',
                  style: TextStyle(
                    fontFamily: 'Abril',
                    fontSize: 30,

                    letterSpacing: 5,
                    height: 0.8,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                  softWrap: false,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(

                    'Modern products, new trends in short, telling you all the way in this store.',
                    style: TextStyle(

                      fontFamily: 'Helvetica-Light',
                      fontSize:16,
                      color: Color(0xff6b6b6b),
                      letterSpacing: 0.78,
                      height: 1.2692307692307692,
                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
const Spacer(),
Column(
mainAxisAlignment:MainAxisAlignment.start,
children: [
Container(
  width: 220,
  decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white,
      ),

      borderRadius: BorderRadius.circular(50),

  ),child: TextButton(child:const Text('Sign In',style: TextStyle(
      color: Colors.white,
      fontSize: 25
),) ,onPressed:(){
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>SingInPageScreen()), (route) => false) ; } ,),
),
const SizedBox(
  height: 15,
),

Container(
  width: 220,
  decoration: BoxDecoration(
      color: HexColor('EFDECC'),
      border: Border.all(
        color: Colors.white,
      ),

      borderRadius: BorderRadius.circular(50),

  ),child: TextButton(child:Text('Sign Up',style: TextStyle(
      color:HexColor('#937F6B'),
      fontSize: 25
),) ,onPressed:(){} ,),
),

],
),
          const SizedBox(height: 80,)
        ],
      ),
    ),
  ),
);  }
}