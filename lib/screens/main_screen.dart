import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_basicos/screens/map_screen.dart';
import 'package:widgets_basicos/screens/rides_screen.dart';
import 'package:widgets_basicos/screens/stories_screen.dart';

import 'characters_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset('assets/images/logodbz.png'),
              ),
              Image.asset(
                'assets/images/gogeta.gif',
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'Dragon Ball',
            style: TextStyle(fontFamily: 'Saiyan-Sans', fontSize: 40),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Personajes',
              ),
              Tab(
                text: 'Historias',
              ),
              Tab(
                text: 'Mapa',
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(17, 29, 48, 1),
        ),
        body: TabBarView(
          children: [
            CharactersScreen(),
            StoriesScreen(),
            MapScreen(),
          ],
        ),
        backgroundColor: Color.fromRGBO(30, 40, 71, 1),
      ),
    );
  }
}
