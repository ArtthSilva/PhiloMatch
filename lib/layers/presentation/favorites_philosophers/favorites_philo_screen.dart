import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<PhilosopherModel> favorites;

  FavoritesScreen(this.favorites);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final philosopher = favorites[index];
          return ListTile(
            title: Text(philosopher.name),
          );
        },
      ),
    );
  }
}
