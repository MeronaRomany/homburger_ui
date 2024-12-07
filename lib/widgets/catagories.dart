import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 130,
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,

            itemCount: 10,
              separatorBuilder:(BuildContext, index)=>SizedBox(width: 5,) ,
              itemBuilder:(BuildContext, index)=>Stack(
                children: [Column(
                  children: [

                      GestureDetector(
                        onTap:(){
                          setState(() {
                            currentIndex=index;
                          });
                        },
                        child: SizedBox(
                            height: 80,
                            width: 90,
                            child: Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              elevation: 3,
                              shadowColor: Colors.black45,
                              color:  currentIndex==index ?Colors.black:Colors.white,
                              child: Icon(Icons.fastfood,
                                   color:  currentIndex==index ?Colors.white:Colors.black.withOpacity(0.7),
                              ),)),
                      ),
                    Text("Burger",style: TextStyle(fontSize: 18),),
                ],),
               ]
              ),
          ),
        ),
      ),
    );
  }
}
