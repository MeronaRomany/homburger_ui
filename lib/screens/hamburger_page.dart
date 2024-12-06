import 'package:flutter/material.dart';
import 'package:hamburger_ui/widgets/header.dart';

import '../widgets/catagories.dart';

class HamburgerPage extends StatefulWidget {
  const HamburgerPage({super.key});

  @override
  State<HamburgerPage> createState() => _HamburgerPageState();
}

class _HamburgerPageState extends State<HamburgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(45.0),
        child: FloatingActionButton(
            onPressed: (){},
          child: Icon(Icons.home_filled,color: Colors.white),
          backgroundColor: Colors.teal,
          elevation: 5,
          splashColor: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45.0)),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
               Icon(Icons.add_alert,color: Colors.white,),
                Spacer(),
                Spacer(),
              Icon(Icons.turned_in,color: Colors.white),
                Spacer(),
            ],),
          ),
        ),
      ),

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: Icon(Icons.menu,color: Colors.white,),
            title: Text("Devider Me",style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            actions: [Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(Icons.shopping_cart,color: Colors.white),
            )],
            centerTitle: true,
          ),
          Header(),
          //SizedBox(height: 10,),
          Catagories(),
        ],
      ),
    );
  }
}
