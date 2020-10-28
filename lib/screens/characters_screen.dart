import 'package:flutter/material.dart';
import 'package:widgets_basicos/repositories/character_repository.dart';
import 'package:widgets_basicos/widgets/character_widget.dart';

class CharactersScreen extends StatefulWidget {
  @override
  CharactersScreenState createState() => CharactersScreenState();
}

class CharactersScreenState extends State<CharactersScreen> {
  final _characterRepository = CharacterRepository();

  int maxCharacters;

  @override
  void initState() {
    maxCharacters = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final characters =
        _characterRepository.getAll(sort: 'name.desc', limit: maxCharacters);

    return Scaffold(
      body: ListView(
        children: characters
            .map((character) => CharacterWidget(
                  character: character,
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          var maxController = TextEditingController();
          maxController.text = maxCharacters.toString();
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text('Filtrar datos'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: maxController,
                          decoration:
                              InputDecoration(hintText: 'Cantidad máxima'),
                        )
                      ],
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            maxCharacters = int.parse(maxController.text);
                            Navigator.pop(context);
                            setState(() {});
                          },
                          child: Text('Filtrar'))
                    ],
                  ));
        },
      ),
    );
  }
}
