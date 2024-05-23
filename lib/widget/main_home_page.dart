import 'package:flutter/material.dart';
import 'package:pokemon_flutter/widget/search_bar.dart';
import 'package:pokemon_flutter/widget/tab_journey.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 2.5,
                    ),
                    itemCount: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return _buildTabBarWidget(index);
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
      ),
    );
  }
}

Widget _buildTabBarWidget(int index) {
  switch (index) {
    case 0:
      return const TabBarWidget(
        judul: "Pokedex",
        containerColor: Color.fromARGB(255, 107, 205, 182),
        boxColor: Color.fromARGB(255, 175, 236, 223),
      );
    case 1:
      return const TabBarWidget(
        judul: "Moves",
        containerColor: Color.fromARGB(255, 255, 127, 113),
        boxColor: Color.fromARGB(255, 255, 146, 134),
      );

    case 2:
      return const TabBarWidget(
        judul: "Abilities",
        containerColor: Color.fromARGB(255, 99, 180, 255),
        boxColor: Color.fromARGB(255, 170, 214, 255),
      );
    case 3:
      return const TabBarWidget(
        judul: "Items",
        containerColor: Color(0xffF6C747),
        boxColor: Color.fromARGB(255, 252, 224, 149),
      );
    case 4:
      return const TabBarWidget(
        judul: "Locations",
        containerColor: Color(0xff7C538C),
        boxColor: Color.fromARGB(255, 161, 125, 177),
      );
    case 5:
      return const TabBarWidget(
        judul: "Type Effects",
        containerColor: Color(0xffB1736C),
        boxColor: Color.fromARGB(255, 212, 163, 157),
      );
    default:
      return Container(); // Handle default case if needed
  }
}
