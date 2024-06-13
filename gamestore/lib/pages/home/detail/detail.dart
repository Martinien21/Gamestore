import 'package:flutter/material.dart';
import 'package:gamestore/modeles/game.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(this.game, {super.key});

  final Game game;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
        backgroundColor: const Color(0xFF5F67EA),
      ),
    );
  }
}