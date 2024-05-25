import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/abilities_page.dart';
import 'package:pokemon_flutter/pages/items_page.dart';
import 'package:pokemon_flutter/pages/locations_page.dart';
import 'package:pokemon_flutter/pages/moves_page.dart';
import 'package:pokemon_flutter/pages/pokedex_page.dart';
import 'package:pokemon_flutter/pages/type_effect_page.dart';
import 'package:pokemon_flutter/widgets/search_bar.dart';
import 'package:pokemon_flutter/widgets/tab_journey.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  "What Pokemon are you looking for?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                child: SearchBarWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 2.5,
                  ),
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return _buildTabBarWidget(context, index);
                  },
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Opacity(
            opacity: 0.1,
            child: Image.asset(
              'assets/images/pokeball.png',
              width: 50,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildTabBarWidget(BuildContext context, int index) {
  switch (index) {
    case 0:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PokedexPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Pokedex",
          containerColor: Color.fromARGB(255, 90, 209, 181),
          boxColor: Color.fromARGB(255, 175, 236, 223),
        ),
      );
    case 1:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MovesPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Moves",
          containerColor: Color.fromARGB(255, 253, 114, 98),
          boxColor: Color.fromARGB(255, 255, 146, 134),
        ),
      );
    case 2:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AbilitiesPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Abilities",
          containerColor: Color.fromARGB(255, 99, 180, 255),
          boxColor: Color.fromARGB(255, 170, 214, 255),
        ),
      );
    case 3:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemsPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Items",
          containerColor: Color(0xffF6C747),
          boxColor: Color.fromARGB(255, 252, 224, 149),
        ),
      );
    case 4:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LocationsPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Locations",
          containerColor: Color(0xff7C538C),
          boxColor: Color.fromARGB(255, 161, 125, 177),
        ),
      );
    case 5:
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TypeEffectPage()),
          );
        },
        child: const TabBarWidget(
          judul: "Type Effects",
          containerColor: Color(0xffB1736C),
          boxColor: Color.fromARGB(255, 212, 163, 157),
        ),
      );
    default:
      return Container();
  }
}
