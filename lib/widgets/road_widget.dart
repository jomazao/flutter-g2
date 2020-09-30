import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoadWidget extends StatelessWidget {
  // Group info
  final groupName;
  final groupIcon;

  //Road info
  final date;
  final route;
  final start;
  final difficult;
  final distance;
  final likes;
  final comments;

  const RoadWidget(
      {Key key,
      this.groupName,
      this.groupIcon,
      this.date,
      this.route,
      this.start,
      this.difficult,
      this.distance,
      this.likes,
      this.comments})
      : super(key: key);

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
