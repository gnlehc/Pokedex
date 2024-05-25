import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/pokemon_detail_page.dart';
import 'package:pokemon_flutter/widgets/pokemon_card.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(28),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.4,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final List<String> pokemonList = [
                    "bulbasaur.png",
                    "charmander.png",
                    "chespin.png",
                    "chikorita.png",
                    "chimchar.png",
                    "cyndaquil.png",
                    "tepig.png",
                    "rowlet.png",
                  ];
                  final pokemonImagePath =
                      'assets/images/${pokemonList[index]}';
                  return PokemonCard(pokemonImagePath);
                },
                childCount: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
