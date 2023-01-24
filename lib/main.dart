import 'package:clothing_store/pages/home_page.dart';
import 'package:clothing_store/util/app_style.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const HomePage(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          height: 60,
          child: CustomNavigationBar(
            isFloating: true,
            borderRadius: const Radius.circular(40),
            selectedColor: kWhite,
            unSelectedColor: kBrown,
            backgroundColor: kBrown,
            strokeColor: Colors.transparent,
            scaleFactor: 0.1,
            iconSize: 40,
            items: [
              CustomNavigationBarItem(
                icon: _current == 0
                    ? const Icon(
                        FontAwesomeIcons.house,
                        size: 30,
                        color: kYellow,
                      )
                    : Icon(
                        FontAwesomeIcons.house,
                        size: 30,
                        color: kWhite,
                      ),
              ),
              CustomNavigationBarItem(
                icon: _current == 1
                    ? const Icon(FontAwesomeIcons.heart,
                        color: kYellow, size: 35)
                    : Icon(FontAwesomeIcons.heart, color: kWhite, size: 35),
              ),
              CustomNavigationBarItem(
                icon: _current == 2
                    ? const Icon(FontAwesomeIcons.person,
                        color: kYellow, size: 30)
                    : Icon(FontAwesomeIcons.user, color: kWhite, size: 30),
              ),
            ],
            currentIndex: _current,
            onTap: (index) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
