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
            color: Theme.of(context).colorScheme.onBackground,
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
              drawerLinks('assets/icons/stethoscope-solid.svg', 'Generate', context),
              const SizedBox(height: 4),
              drawerLinks('assets/icons/globe-outline.svg', 'Explore', context),
              const SizedBox(height: 4),
              drawerLinks('assets/icons/file-text-outline.svg', 'Collection', context),
            ],
          ).p20(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
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

Widget drawerLinks(String drawerIcon, String drawerText, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: SvgPicture.asset(
              drawerIcon,
              width: 25,
              height: 25,
              // ignore: deprecated_member_use
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            drawerText,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
    ),
  );
}
