import 'package:flutter/material.dart';
import 'package:radiox/Widgets/drawer.dart';
// import 'package:radiox/Widgets/grid.dart';
import 'package:radiox/Widgets/upload.dart';
// import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Pluto',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
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
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.primary,
              size: 27,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: const MainScreen(),
    );
  }
}
