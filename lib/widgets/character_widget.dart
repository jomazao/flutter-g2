import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:widgets_basicos/models/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  CharacterWidget({this.character});

  @override
  Widget build(BuildContext context) {
    var subTitleStyle = TextStyle(color: Color.fromRGBO(74, 179, 244, 1));
    var contentStyle = TextStyle(color: Colors.white);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 30,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                character.photo,
                height: 100,
              ),
              Text(
                character.name,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 60,
          child: Container(
            height: 100,
            width: 200,
            color: Color.fromRGBO(46, 59, 91, 1),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
        )
      ],
    );
  }
}
