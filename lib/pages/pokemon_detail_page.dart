import 'package:flutter/material.dart';

class PokemonDetailsPage extends StatelessWidget {
  final String pokemonName;

  const PokemonDetailsPage(this.pokemonName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon Details'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'About'),
              Tab(text: 'Base Stats'),
              Tab(text: 'Evolution'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAboutTab(context),
            _buildBaseStatsTab(),
            _buildEvolutionTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutTab(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Details for Pokemon ${pokemonName.split("/").last.split(".").first}',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Hero(
              tag: pokemonName,
              child: Image.asset(
                pokemonName,
                width: MediaQuery.of(context).size.width *
                    0.5, // Make the image smaller
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          _buildDetailItem('Type', 'Electric'),
          _buildDetailItem('Height', '0.5m'),
          _buildDetailItem('Weight', '6.9kg'),
          _buildDetailItem('Abilities', 'Static'),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Description:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Generates electricity using two special organs located in its cheeks.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBaseStatsTab() {
    return const Center(
      child: Text(
        'Base Stats',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildEvolutionTab() {
    return const Center(
      child: Text(
        'Evolution',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
