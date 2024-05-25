import 'package:flutter/material.dart';

class PokemonDetailsPage extends StatelessWidget {
  final String pokemonName;

  const PokemonDetailsPage(this.pokemonName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Details'),
      ),
      body: Center(
        child: Text('Details for Pokemon $pokemonName'),
      ),
    );
  }
}
