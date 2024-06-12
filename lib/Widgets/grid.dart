import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainGrid extends StatefulWidget {
  const MainGrid({super.key});

  @override
  State<MainGrid> createState() => _MainGridState();
}

class _MainGridState extends State<MainGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Vx.gray100,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return cardImage(index);
        },
      ),
    );
  }
}

Widget cardImage(int index) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/card/${index + 1}.jpg'),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
          0.1,
          0.8
        ], colors: [
          Colors.black.withOpacity(.7),
          Colors.black.withOpacity(.1),
        ]),
      ),
    ),
  );
}
