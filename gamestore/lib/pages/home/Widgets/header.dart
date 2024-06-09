import 'package:flutter/material.dart';

class headerSection extends StatelessWidget {
  const headerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:5),
            Text(
              "What would you like to play ?",
              style: TextStyle(
                fontSize: 19,
                color: Colors.white
              ),
            )
            ],
          ),
          Column(
            children: [
              CircleAvatar(
              child: Image.asset(
                'assets/images/avatar.png',
                fit: BoxFit.cover ,
                ),
            )],
          )
      ],),
    );
  }
}