import 'package:flutter/material.dart';

class TrikiScreen extends StatefulWidget {
  @override
  TrikiScreenState createState() => TrikiScreenState();
}

class TrikiScreenState extends State<TrikiScreen> {
  int actualPlayer;
  List<Map<String, int>> cells;

  @override
  void initState() {
    super.initState();

    actualPlayer = 1;
    cells = [
      {'cellNumber': 1, 'selected': null},
      {'cellNumber': 2, 'selected': null},
      {'cellNumber': 3, 'selected': null},
      {'cellNumber': 4, 'selected': null},
      {'cellNumber': 5, 'selected': null},
      {'cellNumber': 6, 'selected': null},
      {'cellNumber': 7, 'selected': null},
      {'cellNumber': 8, 'selected': null},
      {'cellNumber': 9, 'selected': null},
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final trikiLine = ({bool vertical = true}) => Container(
          color: Colors.lime,
          height: !vertical ? 10 : null,
          width: vertical ? 10 : null,
        );

    final verLine = trikiLine();
    final horLine = trikiLine(vertical: false);

    final alignNumber = (int cellNumber) {
      switch (cellNumber) {
        case 1:
          return Alignment.topLeft;
        case 2:
          return Alignment.topCenter;
        case 3:
          return Alignment.topRight;
        case 4:
          return Alignment.centerLeft;
        case 5:
          return Alignment.center;
        case 6:
          return Alignment.centerRight;
        case 7:
          return Alignment.bottomLeft;
        case 8:
          return Alignment.bottomCenter;
        case 9:
          return Alignment.bottomRight;
      }
    };

    final cell = (int cellNumber, int selected) => GestureDetector(
          onTap: () => cellTapped(cellNumber),
          child: Align(
            alignment: alignNumber(cellNumber),
            child: Container(
              color: Colors.blue,
              height: screenWidth / 3,
              width: screenWidth / 3,
              child: Center(
                child: Text(
                  selected == 1
                      ? 'O'
                      : selected == 2
                          ? 'X'
                          : '',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        );

    return Column(
      children: [
        //DIBUJA EL TRIKI
        Container(
          width: screenWidth,
          height: screenWidth,
          child: Stack(
            children: [
              ////////////
              ...cells
                  .map((item) => cell(item['cellNumber'], item['selected']))
                  .toList(),

              ////////////
              Align(alignment: Alignment(-0.33, 0), child: verLine),
              Align(alignment: Alignment(0.33, 0), child: verLine),
              Align(alignment: Alignment(0, -0.33), child: horLine),
              Align(alignment: Alignment(0, 0.33), child: horLine),
            ],
          ),
        ),
        ///////////

        Text(
          'Turno del jugador $actualPlayer',
          style: TextStyle(fontSize: 30, color: Colors.white),
        )
      ],
    );
  }

  cellTapped(int cellNumber) {
    print('Se tocó la celda numero $cellNumber');
    var cell = cells.firstWhere((item) => item['cellNumber'] == cellNumber);
    cell['selected'] = actualPlayer;
    if (actualPlayer == 1) {
      actualPlayer = 2;
    } else {
      actualPlayer = 1;
    }
    setState(() {});
  }
}
