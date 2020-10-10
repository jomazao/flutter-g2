import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widgets_basicos/models/character.dart';
import 'package:widgets_basicos/screens/details_screen.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  CharacterWidget({this.character});

  @override
  Widget build(BuildContext context) {
    var subTitleStyle = TextStyle(color: Color.fromRGBO(74, 179, 244, 1));
    var contentStyle = TextStyle(color: Colors.white);

    var screenSize = MediaQuery.of(context).size;

    var screenWidth = screenSize.width; //Ancho
    var screenHeight = screenSize.height; // Alto

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    character: character,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lime,
            border: Border.all(
              width: 5,
              color: Colors.white,
            )),
        // width: screenWidth,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          //   mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment(0.5, 1),
              child: Container(
                height: 100,
                width: screenWidth * 0.45,
                color: Color.fromRGBO(46, 59, 91, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  //   crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Color.fromRGBO(74, 96, 248, 1),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          character.race,
                          style: contentStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        //  crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Ocupación:',
                                style: subTitleStyle,
                              ),
                              Text(
                                character.occupation,
                                style: contentStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Edad:',
                                style: subTitleStyle,
                              ),
                              Text(
                                '${character.age} años',
                                style: contentStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Universo:',
                                style: subTitleStyle,
                              ),
                              Text(
                                'Universo-${character.universe}',
                                style: contentStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Planeta:',
                                style: subTitleStyle,
                              ),
                              Text(
                                character.origin,
                                style: contentStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(1, 1),
              child: SizedBox(
                width: screenWidth / 3,
                height: screenWidth / 3,
                child: Image.network(
                  character.photo,
                  alignment: Alignment.topRight,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
