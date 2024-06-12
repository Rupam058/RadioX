import 'package:flutter/material.dart';
import 'package:radiox/Widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.gray200,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'RadioX',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 27,
            fontFamily: 'Enfonix',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {},
        // ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
              size: 27,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
