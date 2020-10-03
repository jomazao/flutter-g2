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
        description:
            'Zamas (ザマスKan, ZamasuHepJP), apodado y mejor conocido como Goku Black (ゴクウブラックKan, Gokū Burakku[12]HepJP, Goku Oscuro[13]), referido regularmente simplemente como Black (ブラックKan, BurakkuHepJP, Oscuro), es, bajo su identidad auténtica, el equivalente de Zamas de la línea de tiempo del presente inalterado, un antiguo Kaio del Norte y aprendiz de Kaio-shin del Universo 10, quien, tras asesinar a su mentor Gowas y convertirse en Kaio-shin, utilizó el anillo del tiempo para viajar al Año 780 y usar las Super Esferas del Dragón con el objetivo de intercambiar de cuerpos con Son Goku, asesinándolo a él junto a su esposa e hijo menor, tomando así su identidad y poder para efectuar el Plan Cero Humanos en colaboración con su versión del futuro alternativo y así conseguir aniquilar a los humanos en el omniverso.');

    var character2 = Character(
        name: 'Karin',
        photo:
            'https://vignette.wikia.nocookie.net/dragonball/images/c/cf/KarinHoldingDragonBall.png/revision/latest?cb=20110901011507&path-prefix=es',
        age: 800,
        race: 'Humanoide',
        occupation: 'Maestro de la torre de Karin',
        universe: 7,
        origin: 'Tierra',
        description:
            'Karin (カリンKan, KarinHepJP), también llamado Duende Karin, Korin, Matou Malí (en España) o Whiskers el Gato Maravilla inicialmente en Hispanoamérica, es un gato blanco, genio de las artes marciales, mundialmente famoso que vive en la tierra sagrada. Hace su aparición en el anime de Dragon Ball en el Episodio 61. Solo entrenaría a el que lograse subir a la Torre y llegar a él. Su fuerza de combate es de 169, un poder superior a el de Maestro Roshi y Tao Pai Pai. Cuando Goku fue derrotado por Tao Pai Pai subió a la torre en la cual consiguió superar la supuesta prueba de quitarle a Karin la jarra con el agua que "daba más poder", pero realmente lo que le dio mas poder fue los tres días que tardó en conseguirlo, ya que el agua era normal y corriente. El Maestro Karin también entrenó al Maestro Roshi, pero el no tardó 3 días sino 3 años. Karin después de la muerte de Piccolo también entrena a Tenshinhan, Krilin, Yamcha y Chaoz.');

    var character3 = Character(
        name: 'Janemba',
        photo:
            'https://vignette.wikia.nocookie.net/dragonball/images/8/8a/Janemba_artwork_SDBH.png/revision/latest?cb=20200630222641&path-prefix=es',
        race: 'Demonio',
        age: 300,
        origin: 'Otro mundo',
        universe: 7,
        occupation: 'Villano',
        description:
            'Janemba (ジャネンバKan, JanenbaHepJP) es un demonio de pura maldad y gran poder maligno. Creado a partir de las acciones de un adolescente ogro llamado Psyche Oni, quien era el responsable de vigilar la máquina purificadora de almas, la cual explota como consecuencia de la falta de cuidado del ogro, las almas malignas terminan por usar como huésped su cuerpo, creando así a este demonio. \nEs el antagonista principal del largometraje de Dragon Ball Z: ¡El renacer de la fusión! Goku y Vegeta.');

    var character4 = Character(
        name: 'Gogeta',
        race: 'Saiyan',
        age: 38,
        origin: 'Planeta tierra',
        occupation: 'Fusión',
        universe: 7,
        description:
            'En la película Dragon Ball Z: ¡El renacer de la fusión! Goku y Vegeta, la parte de las hombreras y cuello eran de color anaranjado, representado a Goku. Además, usa un pantalón blanco-grisáceos ligeramente oscurecidos que es sujetado por una cinta azul-turquesa agua y porta tobilleras también de color azul, representado el color de Vegeta. Por último, la fusión utiliza muñequeras negras de cuero y zapatos del mismo tono como calzado. En su diseño original, dibujando una línea vertical en su rostro se lo puede dividir en partes simétricas, distinguiendo a Goku en el lado derecho y a Vegeta en el izquierdo. Su cabello es similar al de Vegetto, disponiendo del peinado de ambos de sus individuos componentes en cada costado, pero teniendo un mechón en la frente en vez de dos además la terminación del cabello es en forma de pico de viuda, como el de Vegeta. Su cuerpo es similar al de Goku, es alto y delgado y al momento de transformarse en Supersaiyano mantiene el color de piel de é',
        photo:
            'https://i.pinimg.com/originals/e7/b6/ee/e7b6ee64b87b0b302cc0560882d80f8e.gif');
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
          CharacterWidget(
            character: character4,
          )
        ],
      ),
    );
  }
}
