import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> matches = [
    {
      "name": "John",
      "age": 28,
      "bio": "Loves hiking and coffee",
      "imageUrl": "https://via.placeholder.com/150"
    },
    {
      "name": "Emily",
      "age": 25,
      "bio": "Avid reader and yoga enthusiast",
      "imageUrl": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Matches')),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(match['imageUrl']),
              ),
              title: Text('${match['name']}, ${match['age']}'),
              subtitle: Text(match['bio']),
              trailing: Icon(Icons.favorite, color: Colors.pink),
            ),
          );
        },
      ),
    );
  }
}
