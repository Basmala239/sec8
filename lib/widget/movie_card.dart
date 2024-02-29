import 'package:flutter/material.dart';

 Widget movieCord(String imagepath,String name,int year) {
    return Container(
      width: 130,
      height: 180,
      color:const  Color(0xFF18181B) ,
      alignment: Alignment.center,
      child: Column(children: [
        ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child:Image.asset(imagepath)),
      const SizedBox(height: 10,),
      
        Text(name,
      style:const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: Colors.white
      ),),
        const SizedBox(height: 10,),
        Text("$year",
      style:const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 12,
        color: Colors.grey
      ),),

      ]),
    );
 }