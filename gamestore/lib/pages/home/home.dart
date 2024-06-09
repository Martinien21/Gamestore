import 'package:flutter/material.dart';
import 'package:gamestore/pages/home/Widgets/Header.dart';
import 'package:gamestore/pages/home/Widgets/category.dart';
import 'package:gamestore/pages/home/Widgets/search.dart';
//import 'package:gamestore/pages/home/Widgets/header.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
                Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(150,50),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                 ),
                ),
                Positioned(  
                 top: 200,
                 right: 0,
                 child: Transform(
                 transform: Matrix4.identity()..rotateZ(20),
                 origin: const Offset(200,50),
                 child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                 ),
                ),
                ),
                 Column(
                  children: [
                  const headerSection(),
                  const  SearchSection(),
                   CategorySection(),
                  ],
                ),
          ],
        ),
        ),
        bottomNavigationBar:navigationbar(),
      );
  }
  Widget navigationbar(){
    return  Container(
      decoration: BoxDecoration( 
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
          spreadRadius:5,
          blurRadius:10,
          ),     
        ]
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          selectedItemColor: const Color(0xFF5F67EA),
          selectedFontSize: 12,
          unselectedItemColor: Colors.grey.withOpacity(0.8),
          type: BottomNavigationBarType.fixed,
          items:const [
          BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.home_rounded,size: 40,),
        ),
        BottomNavigationBarItem(
          label: 'Applications',
          icon: Icon(Icons.more_horiz,
          size : 40,),
        ),
        BottomNavigationBarItem(
          label: 'Film',
          icon:Icon(Icons.play_arrow),
          ),
        
        BottomNavigationBarItem(
          label: 'Books',
          icon: Icon(Icons.book,size: 40,),
        ),
      ],
        ),
      ),
    );
    
  }
}
