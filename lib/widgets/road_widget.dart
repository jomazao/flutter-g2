import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoadWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Group info
    final groupName = 'BICIBAGUE';
    final groupIcon =
        'https://pbs.twimg.com/profile_images/866126618334515201/2FZRIDUP_400x400.jpg';

    //Road info
    final date = DateTime(2020, 7, 7, 7, 30);
    final route = 'ANTES DE PEÑARANDA';
    final start = 'Plaza Bolivar';
    final difficult = 3.0;
    final distance = 1.6;
    final likes = 23;
    final comments = 3;

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
                groupIcon,
                height: 100,
              ),
              Text(
                groupName,
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
                      date.toIso8601String(),
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
                            'Ruta:',
                            style: subTitleStyle,
                          ),
                          Text(
                            route,
                            style: contentStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Inicio:',
                            style: subTitleStyle,
                          ),
                          Text(
                            start,
                            style: contentStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hora:',
                            style: subTitleStyle,
                          ),
                          Text(
                            date.hour.toString(),
                            style: contentStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Nivel de dificultad:',
                            style: subTitleStyle,
                          ),
                          Text(
                            '*' * difficult.toInt(),
                            style: contentStyle,
                          ),
                          Text(
                            'k.m:',
                            style: subTitleStyle,
                          ),
                          Text(
                            distance.toString(),
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
