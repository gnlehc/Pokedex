import 'package:flutter/material.dart';
import 'package:pokemon_flutter/widget/search_bar.dart';
import 'package:pokemon_flutter/widget/tab_journey.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100, left: 30),
              child: Text(
                "What Pokemon are you looking for?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  // fontFamily: GoogleFonts.pressStart2pTextTheme(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: SearchBarWidget(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 2,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return _buildTabBarWidget(index);
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

Widget _buildTabBarWidget(int index) {
  switch (index) {
    case 0:
      return TabBarWidget(
        judul: "Pokedex",
        containerColor: const Color.fromARGB(255, 107, 205, 182),
        boxColor: Color.fromARGB(255, 175, 236, 223),
      );
    case 1:
      return TabBarWidget(
        judul: "Moves",
        containerColor: const Color.fromARGB(255, 255, 127, 113),
        boxColor: Color.fromARGB(255, 255, 146, 134),
      );

    case 2:
      return TabBarWidget(
        judul: "Abilities",
        containerColor: const Color.fromARGB(255, 99, 180, 255),
        boxColor: Color.fromARGB(255, 170, 214, 255),
      );
    case 3:
      return TabBarWidget(
        judul: "Items",
        containerColor: const Color(0xffF6C747),
        boxColor: Color.fromARGB(255, 252, 224, 149),
      );
    case 4:
      return TabBarWidget(
        judul: "Locations",
        containerColor: const Color(0xff7C538C),
        boxColor: Color.fromARGB(255, 161, 125, 177),
      );
    case 5:
      return TabBarWidget(
        judul: "Type",
        containerColor: const Color(0xffB1736C),
        boxColor: Color.fromARGB(255, 212, 163, 157),
      );
    default:
      return Container(); // Handle default case if needed
  }
}
