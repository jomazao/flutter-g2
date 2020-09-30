import 'package:flutter/cupertino.dart';
import 'package:widgets_basicos/models/character.dart';
import 'package:widgets_basicos/widgets/character_widget.dart';
import 'package:widgets_basicos/widgets/road_widget.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // personajes

    var name1 = 'asfasf';
    var name2 = 'asfasfas';
    var name3 = 'asfasfasf';

    var photo1 = 'asfasfasf';
    var photo2 = 'asfasf';
    var photo3 = 'asfasf';

    var character1 = Character(
      name: 'Goku Black',
      photo:
          'https://vignette.wikia.nocookie.net/dragonball/images/6/6e/Goku_Black_DBS.png/revision/latest/scale-to-width-down/232?cb=20180117015759&path-prefix=es',
      age: 35,
      occupation: 'Kaio-shin',
      origin: 'Kaishin',
      universe: 10,
      race: 'Shin-jhin',
    );

    var character2 = Character(
      name: 'Karin',
      photo:
          'https://vignette.wikia.nocookie.net/dragonball/images/c/cf/KarinHoldingDragonBall.png/revision/latest?cb=20110901011507&path-prefix=es',
      age: 800,
      race: 'Humanoide',
      occupation: 'Maestro de la torre de Karin',
      universe: 7,
      origin: 'Tierra',
    );

    var character3 = Character(
      name: 'Janemba',
      photo:
          'https://vignette.wikia.nocookie.net/dragonball/images/8/8a/Janemba_artwork_SDBH.png/revision/latest?cb=20200630222641&path-prefix=es',
      race: 'Demonio',
      age: 300,
      origin: 'Otro mundo',
      universe: 7,
      occupation: 'Villano',
    );

    return Center(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CharacterWidget(
            character: character1,
          ),
          CharacterWidget(
            character: character1,
          ),
          CharacterWidget(
            character: character2,
          ),
          CharacterWidget(
            character: character3,
          ),
          CharacterWidget(
            character: character3,
          ),
          CharacterWidget(
            character: character3,
          ),
          CharacterWidget(
            character: character3,
          ),
        ],
      ),
    );
  }
}
