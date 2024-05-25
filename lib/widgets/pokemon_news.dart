import 'package:flutter/material.dart';

class PokemonNews extends StatelessWidget {
  const PokemonNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[300]!),
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 250,
                      child: Text(
                        "Pokemon Rumble Rush Arrives Soon",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Text(
                      "15 May 2019",
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Expanded(
                  child: Image.asset('assets/images/thumbnail.png'),
                )
              ],
            )));
  }
}
