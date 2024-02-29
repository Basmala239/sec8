import 'package:flutter/material.dart';
import 'package:sec8/screens/second_screen.dart';
import '../core/assets_manager/assets_manager.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color:const  Color(0xFF18181B) ,
         child: SingleChildScrollView(
          child: Column(
          children: [
             Image.asset(AssetsManager.mainImage,),
           const SizedBox(height: 10,),
            const Text('Onboarding',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Colors.white
            ),),
           const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              width: 218,
              height: 50,
              child: const Text("Watch everything you want\n                for free!",
              style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.white
              ),),
            ),
           const SizedBox(height: 10,),
          
          DecoratedBox(
          decoration:const  BoxDecoration(
            gradient:  LinearGradient(
                  colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                ), 
            borderRadius: BorderRadius.all(Radius.circular(30))
          ),    
      child:Container(
        width:220,
        height: 50,
        margin:const  EdgeInsets.all(2),
        decoration: const BoxDecoration(
            color:  Color(0xFF18181B) ,
            borderRadius: BorderRadius.all(Radius.circular(30))
            ),
           child: TextButton(
         child: const Text('Enter now',
               style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white
                ),),
         
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondScreen()));
            },
        ),
      ),
         )]),
      )),
    );
  }
}