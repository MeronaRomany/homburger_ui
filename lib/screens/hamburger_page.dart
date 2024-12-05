import 'package:flutter/material.dart';
import 'package:hamburger_ui/widgets/header.dart';

class HamburgerPage extends StatefulWidget {
  const HamburgerPage({super.key});

  @override
  State<HamburgerPage> createState() => _HamburgerPageState();
}

class _HamburgerPageState extends State<HamburgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
        ],
      ),
    );
  }
}
