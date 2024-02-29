import 'package:flutter/material.dart';
import 'package:sec8/core/assets_manager/assets_manager.dart';
import 'package:sec8/models/movie.dart';
import 'package:sec8/widget/movie_card.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});
  List<Movie>list=[
    Movie(AssetsManager.samaritanImage, "Samaritan", 2022),
    Movie(AssetsManager.secretImage, "Secret", 2022),
    Movie(AssetsManager.samaritanImage, "Samaritan", 2022),
    Movie(AssetsManager.secretImage, "Secret", 2022),
    Movie(AssetsManager.samaritanImage, "Samaritan", 2022),
    Movie(AssetsManager.secretImage, "Secret", 2022),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        color:const  Color(0xFF18181B) ,
        child: SingleChildScrollView(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text('Search for a content',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white
                ),
              ),
              const SizedBox(height: 10,)
              , DecoratedBox(
            decoration:const  BoxDecoration(
              gradient:  LinearGradient(
                    colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ), 
              borderRadius: BorderRadius.all(Radius.circular(30))
            ),
                
                child:Padding(
          padding: const EdgeInsets.all(2),
          child: SearchBar(
              trailing: const  [
                Icon(Icons.search),
              ],
              
              backgroundColor:MaterialStateProperty.all(const Color(0xFF18181B)) ,
              hintText: 'Search for a content.',
              hintStyle:MaterialStateProperty.all(
                const TextStyle(
                      color: Color(0xFFC4C5C4),
                      fontWeight: FontWeight.w500,
                      fontSize: 14
              ),),
              onTap: () {
                    
                  },
             ),
                ),
          ),
          const SizedBox(height: 10,),
           const Text('Categories.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white
                ),
              ),
              const SizedBox(height: 10,),
              Center(child: Image.asset(AssetsManager.categoreImage)),
              const SizedBox(height: 10,),
              const Text('Most searched.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder:(context,index)=>movieCord(list[index].imagepath, list[index].name, list[index].year) ),
              ),
               const SizedBox(height: 10,),
              Container(
                margin:const EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder:(context,index)=>movieCord(list[index].imagepath, list[index].name, list[index].year) ),
              )
            ]
          ),
        )
      )
    ));
  }
}