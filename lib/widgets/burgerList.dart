import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Burgerlist extends StatefulWidget {
  const Burgerlist({super.key});

  @override
  State<Burgerlist> createState() => _BurgerlistState();
}

class _BurgerlistState extends State<Burgerlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemBuilder:(BuildContext, index)=> Stack(
          children:[ Container(
            width: 350,
            height: 250,
      
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Text("Chicken burger",style: TextStyle(
                 fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),),
                Spacer(),
                Row(children: [
                  Text("150 \$ CNA",style: TextStyle(
                     fontSize: 18,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                  ),),
                  Spacer(),
      
                  Card(
                    color: Colors.teal.withOpacity(0.5),
                    child: Icon(Icons.add,size: 35,),
                  )
                ],)
              ],),
            ),
            decoration: BoxDecoration(

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),

              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomRight:  Radius.circular(15),
                bottomLeft: Radius.circular(40),
              ),
            ),
      
            ),
           Align(
               alignment: Alignment.center,
               child: Image.asset("assets/images/classic-cheese-burger-with-beef-cutlet-vegetables-onions-isolated-white-background.jpg")),
        ]
        ),
       itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 250,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
      
          ),),
    );

  }
}



