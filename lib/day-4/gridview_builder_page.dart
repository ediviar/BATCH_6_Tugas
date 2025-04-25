import 'package:flutter/material.dart';

import 'widgets/football_player_card.dart';

class GridviewBuilderPage extends StatefulWidget {
  const GridviewBuilderPage({super.key});

  @override
  State<GridviewBuilderPage> createState() => _GridviewBuilderPageState();
}

class _GridviewBuilderPageState extends State<GridviewBuilderPage> {

  final footballPlayers = [
    {'name': 'Cristiano Ronaldo', 'image': "https://assets.goal.com/images/v3/blt2aaca933046f8b00/Cristiano%20Ronaldo%20Portugal%202024%20(4).jpg"},
    {'name': 'Lionel Messi', 'image': "https://imageio.forbes.com/specials-images/imageserve/663e595b4509f97fdafb95f5/0x0.jpg?format=jpg&crop=383,383,x1045,y23,safe&height=416&width=416&fit=bounds"},
    {'name': 'Neymar Jr', 'image': null},
    {'name': 'Kylian Mbappe', 'image': null},
    {'name': 'Kevin De Bruyne', 'image': null},
    {'name': 'Mohamed Salah', 'image': null},
    {'name': 'Karim Benzema', 'image': null},
    {'name': 'Robert Lewandowski', 'image': null},
    {'name': 'Virgil van Dijk', 'image': null},
    {'name': 'Sadio Mane', 'image': null},
    {'name': 'Harry Kane', 'image': null},
    {'name': 'Gareth Bale', 'image': null},
    {'name': 'Eden Hazard', 'image': null},
    {'name': 'Luka Modric', 'image': null},
    {'name': 'Sergio Ramos', 'image': null},
    {'name': 'Gerard Pique', 'image': null},
    {'name': 'Zlatan Ibrahimovic', 'image': null},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Builder Page'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 2/3,
        ),
        padding: EdgeInsets.all(8),
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) => FootballPlayerCard(
          footballPlayer: footballPlayers[index]
        )
      ),
    );
  }
}