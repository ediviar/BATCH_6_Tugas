import 'package:flutter/material.dart';

class ListviewSeparatedPage extends StatefulWidget {
  const ListviewSeparatedPage({super.key});

  @override
  State<ListviewSeparatedPage> createState() => _ListviewSeparatedPageState();
}

class _ListviewSeparatedPageState extends State<ListviewSeparatedPage> {

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
        title: const Text('ListView Builder Page'),
      ),
      body: ListView.separated(
        itemCount: footballPlayers.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: footballPlayers[index]['image'] != null 
                  ? NetworkImage(footballPlayers[index]['image']!)
                  : null,
              child: Text(footballPlayers[index]['name']![0]),
            ),
            title: Text(footballPlayers[index]['name']!),
          );
        },
      )
    );
  }
}