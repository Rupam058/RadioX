import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainGrid extends StatefulWidget {
  const MainGrid({super.key});

  @override
  State<MainGrid> createState() => _MainGridState();
}

class _MainGridState extends State<MainGrid> {
  _MainGridState() {
    _selectedVal = _types[0];
  }

  final _types = ["1", "2", "3", "4"];
  String? _selectedVal = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Vx.gray100,
      child: ListView(
        children: [
          DropdownButtonFormField(
            value: _selectedVal ?? _types[0],
            items: _types
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (val) {
              setState(() {
                _selectedVal = val as String;
              });
            },
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black87,
            ),
            dropdownColor: Vx.gray200,
            decoration: const InputDecoration(
              labelText: 'DropDown',
              // prefixIcon:
              border: InputBorder.none,
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
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
        ],
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
