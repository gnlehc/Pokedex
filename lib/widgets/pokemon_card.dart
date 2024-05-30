import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/pokemon_detail_page.dart';

class PokemonCard extends StatelessWidget {
  final String pokemonImagePath;

  const PokemonCard(this.pokemonImagePath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 500),
              pageBuilder: (context, animation, secondaryAnimation) {
                return FadeTransition(
                  opacity: animation,
                  child: PokemonDetailsPage(pokemonImagePath),
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Hero(
                tag: pokemonImagePath, // Unique tag for the Hero animation
                child: Image.asset(
                  pokemonImagePath,
                  width: 70,
                  height: 70,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
              Positioned(
                bottom: -2,
                right: 0,
                child: Text(
                  pokemonImagePath.split("/").last.split(".").first,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
