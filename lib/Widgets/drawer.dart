import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Vx.gray200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    width: 85,
                    height: 85,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo-sm.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'SigmaMind',
                      style: TextStyle(
                        fontFamily: 'Enfonix',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              drawerLinks('assets/icons/stethoscope-solid.svg', 'Generate'),
              drawerLinks('assets/icons/globe-outline.svg', 'Explore'),
              drawerLinks('assets/icons/file-text-outline.svg', 'Collection'),
            ],
          ).p(20),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget drawerLinks(String drawerIcon, String drawerText) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        SvgPicture.asset(
          drawerIcon,
          width: 25,
          height: 25,
        ),
        const SizedBox(
          width: 24,
        ),
        Text(
          drawerText,
          style: const TextStyle(
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  );
}
