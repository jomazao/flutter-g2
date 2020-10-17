import 'package:flutter/cupertino.dart';
import 'package:widgets_basicos/screens/triki_form_screen.dart';
import 'package:widgets_basicos/screens/triki_screen.dart';

class TrikiHomeScreen extends StatefulWidget {
  @override
  TrikiHomeScreenState createState() => TrikiHomeScreenState();
}

class TrikiHomeScreenState extends State<TrikiHomeScreen> {
  static const FORM_SCREEN = 1;
  static const PLAYING_GAME = 2;

  int actualScreen;

  String nameOne;
  String nameTwo;

  setNames(String nameOne, String nameTwo) {
    this.nameOne = nameOne;
    this.nameTwo = nameTwo;
    actualScreen = PLAYING_GAME;
    setState(() {});
  }

  restartGame() {
    this.nameOne = null;
    this.nameTwo = null;
    actualScreen = FORM_SCREEN;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    actualScreen = FORM_SCREEN;
  }

  @override
  Widget build(BuildContext context) {
    switch (actualScreen) {
      case FORM_SCREEN:
        return TrikiFormScreen(
          onStart: setNames,
        );
      case PLAYING_GAME:
        return TrikiScreen(
          namePlayerOne: nameOne,
          namePlayerTwo: nameTwo,
          restartGame: restartGame,
        );
    }
    return Text('no screen');
  }
}
