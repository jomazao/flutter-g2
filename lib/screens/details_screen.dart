import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_basicos/models/character.dart';

class DetailsScreen extends StatelessWidget {
  final Character character;

  const DetailsScreen({this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          character.name,
          style: TextStyle(fontFamily: 'Saiyan-Sans', fontSize: 40),
        ),
        backgroundColor: Color.fromRGBO(17, 29, 48, 1),
      ),
      body: ListView(
        children: [
          Image.network(
            character.photo,
            // width: 100,
            //height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(
                  color: Colors.green,
                  width: 10,
                ),
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(200),
                    left: Radius.elliptical(100, 200)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        -10,
                        10,
                      )),
                  /*   BoxShadow(
                      color: Colors.blue,
                      offset: Offset(
                        10,
                        -10,
                      ))*/
                ],
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                )),

            //color: Colors.amber,
            child: Text(
              character.description,
            ),
          )
        ],
      ),
    );
  }
}
