import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final Color containerColor;
  final Color boxColor;
  final String judul;

  const TabBarWidget({
    Key? key,
    required this.containerColor,
    required this.boxColor,
    required this.judul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: boxColor,
            spreadRadius: 2,
            blurRadius: 15,
            blurStyle: BlurStyle.normal,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      width: double.infinity,
      height: 80,
      child: Stack(
        children: [
          Positioned(
            right: -20,
            top: -6,
            child: SizedBox(
              width: 100,
              height: 100,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.2),
                  BlendMode.srcIn,
                ),
                child: Image.asset(
                  'assets/images/pokeball.png',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  judul,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
