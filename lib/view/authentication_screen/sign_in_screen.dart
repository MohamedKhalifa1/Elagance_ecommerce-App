import 'package:elagance/constant/constant.dart';
import 'package:elagance/view/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class SingInPageScreen extends StatelessWidget{
  const SingInPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return DefaultTabController(
  length: 2,
  initialIndex: 0,
  child:   Scaffold(

    body:Container(

      width: MediaQuery.of(context).size.width,

      height: MediaQuery.of(context).size.height,

      decoration:  BoxDecoration(

        color: Colors.black.withOpacity(1),

        image: const DecorationImage(

          image: AssetImage('assets/images/authentication.png'),fit: BoxFit.cover,

        ),

      ),

      child:SafeArea(

        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,

            children: [

              const SizedBox(

                height: 30,

              ),

              Elogo(

                color: HexColor('E5D3C2'),

              ),
              const SizedBox(
                 height: 30,
               ),

               TabBar(
labelColor:  HexColor('#EFDECC'),
                   indicatorColor: Colors.transparent,
            unselectedLabelColor: HexColor('707070'),
                   tabs:[

                Tab(

  child: Text('Sign In',style: TextStyle(


    fontSize: 40

  ),),

                ),

                Tab(

  child: Text('Sign Up',style: TextStyle(


    fontSize: 40

  ),),

                ),

              ]),

SizedBox(

  height: MediaQuery.of(context).size.height*.7,

  child: TabBarView(



    physics: const BouncingScrollPhysics(),

    children: [

        SignInSceenView(),
      SignUpSceenView(),

    ],

  ),

),

            ],

          ),
        ),

      ) ,

    ),

  ),
);  }
}