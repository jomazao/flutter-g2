import 'package:flutter/material.dart';

class TrikiFormScreen extends StatelessWidget {
  final Function(String, String) onStart;

  TrikiFormScreen({this.onStart});

  @override
  Widget build(BuildContext context) {
    final nameOneController = TextEditingController();
    final nameTwoController = TextEditingController();

    return Center(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 10),
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Bienvenido a Triki',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: nameOneController,
              decoration: InputDecoration(hintText: "Nombre del jugador 1"),
            ),
            TextField(
              controller: nameTwoController,
              decoration: InputDecoration(hintText: "Nombre del jugador 2"),
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                var nameOne = nameOneController.text;
                var nameTwo = nameTwoController.text;

                if (nameOne.isEmpty || nameTwo.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('El nombre no puede ser vacío'),
                    ),
                  );
                } else {
                  onStart(nameOne, nameTwo);
                }
              },
              child: Text('Empezar juego'),
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
