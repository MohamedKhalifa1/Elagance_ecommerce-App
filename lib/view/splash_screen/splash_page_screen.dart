import 'package:elagance/constant/constant.dart';
import 'package:elagance/view/main_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({ super.key });

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController ?animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: Duration(microseconds: 750));
    fadingAnimation=Tween<double>(begin:.7,end:1).animate(animationController!);
    animationController?.repeat(reverse: true);
    // TODO: implement initState
    super.initState();
    goToNext();

  }
  @override
  dispose() {
    animationController?.dispose(); // you need this
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:   Scaffold(

        body: Center(

          child: Row(

            mainAxisAlignment:MainAxisAlignment.center ,

            crossAxisAlignment: CrossAxisAlignment.center,

            children:  [

              FadeTransition(
                  opacity: fadingAnimation!,
                  child: Elogo())
            ],

          ),

        ),

      ),
    ) ;  }
}
void goToNext(){
  Future.delayed(Duration(seconds: 5),(){
Get.to(()=>MainScreen());  });
}
