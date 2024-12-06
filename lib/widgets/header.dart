import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {

    return SliverList(
        delegate:SliverChildListDelegate(
          [
            Stack(
              children:[
                Column(
                children: [
                  Container(
                    height: 200,
                    width:double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45),
                      )
                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(16.0),
                          child:  Container(
                            height: 100,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/classic-cheese-burger-with-beef-cutlet-vegetables-onions-isolated-white-background.jpg")
                                     ,radius: 45.0,
                                   ),

                                    SizedBox(width: 5,),
                                    Column(
                                     children: [
                                       Text("wanteg jack",style: TextStyle(
                                         fontSize: 15,
                                         //fontWeight: FontWeight.bold,
                                         color: Colors.white,
                                       ),),
                                       Text("Gold Member",style: TextStyle(
                                         fontSize: 18,
                                           color: Colors.white,
                                       ),),
                                     ],
                                    ),
                                    Spacer(),
                                    Text("15 \$ CAN",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),


                      ],
                    ),

                  ),

                 SizedBox(height: 20,),
                ],
              ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 310,
                    margin: EdgeInsets.only(left: 45.0),
                    child: Card(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "what does your belly want ?",
                          hintStyle: TextStyle(fontSize: 18),
                          suffixIcon: Icon(Icons.search_rounded),
                          contentPadding: EdgeInsets.all(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
             ]
            ),
          ]
        ) );
  }
}
