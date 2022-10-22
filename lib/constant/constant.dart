import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../view/main_screen/main_screen.dart';

Widget Elogo ({
  Color color=Colors.black,
})=> Text('E',style: TextStyle(

    fontSize: 80,
    fontWeight: FontWeight.bold,
color: color,
    fontFamily: 'Dancing'

),);
Future GoToAndRemove({BuildContext ?context,required Widget page})=>Navigator.pushAndRemoveUntil(context!, MaterialPageRoute(builder: (context)=>page), (route) => false);
Widget DefaultButton({
 required BuildContext context,
  required Color textColor,
  required Color containerColor,
  required bool haveBorder,
  required Widget page,
  required String text,

})=>  Container(
  width: 220,
  decoration: BoxDecoration(
    color:containerColor ,

    border: haveBorder?Border.all(
      color: Colors.white,
    ):null,

    borderRadius: BorderRadius.circular(50),

  ),child: TextButton(child: Text('$text',style: TextStyle(
    color: textColor,
    fontSize: 25
),) ,onPressed:(){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>page), (route) => false) ; } ,),
);
class SignInSceenView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height*.6,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),

                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.white,
                // controller: emailController,
                decoration:   InputDecoration(

                    focusColor: HexColor('E5D3C2'),
                    fillColor: Colors.white,
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    hintStyle: TextStyle(

                        color: HexColor('E5D3C2'),
                        fontSize: 20
                    ),
                    prefixIcon: Icon(Icons.email_outlined,color:HexColor('E5D3C2'),),
                    hintText: 'E-Mail'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),

                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.white,
                // controller: emailController,
                decoration:   InputDecoration(

                    focusColor: HexColor('E5D3C2'),
                    fillColor: Colors.white,
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    hintStyle: TextStyle(

                        color: HexColor('E5D3C2'),
                        fontSize: 20
                    ),
                    prefixIcon: Icon(Icons.lock_outline_sharp,color:HexColor('E5D3C2'),),
                    suffix: IconButton(icon: Icon(Icons.visibility,color:HexColor('E5D3C2'),), onPressed: () {  },),
                    hintText: 'Password'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){}, child: Text('Forgot password?',style: TextStyle(
                  color: HexColor('#B4B4B4'),
                  fontSize: 18
              ),)),
              Spacer(),
              DefaultButton(textColor: Colors.white, containerColor: Colors.transparent, haveBorder: true, page: MainScreen(), text: 'Sign In', context: context,),
              SizedBox(
                height: 20,
              ),
              DefaultButton(textColor: Colors.white, containerColor: HexColor('2553B3'), haveBorder: false, page: MainScreen(), text: 'Facebook', context: context,),
            ],
          ),
        ),
      ),
    );

  }

}class SignUpSceenView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        height: MediaQuery.of(context).size.height*.6,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                style: TextStyle(color: Colors.white),

                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                // controller: emailController,
                decoration:   InputDecoration(

                    focusColor: HexColor('E5D3C2'),
                    fillColor: Colors.white,
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    hintStyle: TextStyle(

                        color: HexColor('E5D3C2'),
                        fontSize: 20
                    ),
                    prefixIcon: IconButton(icon: Icon(Icons.supervised_user_circle,color:HexColor('E5D3C2'),), onPressed: () {  },),
                    hintText: 'User Name'
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),

                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.white,
                // controller: emailController,
                decoration:   InputDecoration(

                    focusColor: HexColor('E5D3C2'),
                    fillColor: Colors.white,
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    hintStyle: TextStyle(

                        color: HexColor('E5D3C2'),
                        fontSize: 20
                    ),
                    prefixIcon: Icon(Icons.email_outlined,color:HexColor('E5D3C2'),),
                    hintText: 'E-Mail'
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),

                keyboardType: TextInputType.visiblePassword,
                cursorColor: Colors.white,
                // controller: emailController,
                decoration:   InputDecoration(

                    focusColor: HexColor('E5D3C2'),
                    fillColor: Colors.white,
                    focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    hintStyle: TextStyle(

                        color: HexColor('E5D3C2'),
                        fontSize: 20
                    ),
                    prefixIcon: Icon(Icons.lock_outline_sharp,color:HexColor('E5D3C2'),),
                    suffix: IconButton(icon: Icon(Icons.visibility,color:HexColor('E5D3C2'),), onPressed: () {  },),
                    hintText: 'Password'
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(onPressed: (){}, child: Text('Forgot password?',style: TextStyle(
                  color: HexColor('#B4B4B4'),
                  fontSize: 18
              ),)),
              Spacer(),
              DefaultButton(textColor: Colors.white, containerColor: Colors.transparent, haveBorder: true, page: MainScreen(), text: 'Sign Up', context: context,),
              SizedBox(
                height: 20,
              ),
              DefaultButton(textColor: Colors.white, containerColor: HexColor('2553B3'), haveBorder: false, page: MainScreen(), text: 'Facebook', context: context,),
            ],
          ),
        ),
      ),
    );


  }

}