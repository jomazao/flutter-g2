import 'package:flutter/material.dart';

class TrikiScreen extends StatefulWidget {
  final String namePlayerOne;
  final String namePlayerTwo;
  final Function restartGame;

  const TrikiScreen(
      {Key key, this.namePlayerOne, this.namePlayerTwo, this.restartGame})
      : super(key: key);

  @override
  TrikiScreenState createState() => TrikiScreenState();
}

class TrikiScreenState extends State<TrikiScreen> {
  int actualPlayer;
  List<Map<String, int>> cells;
  int win;

  get nameActualPlayer =>
      actualPlayer == 1 ? widget.namePlayerOne : widget.namePlayerTwo;
  get nameWinner => win == 1 ? widget.namePlayerOne : widget.namePlayerTwo;
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
                      color: selected == 1 ? Colors.red : Colors.lightGreen,
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
          'Turno de $nameActualPlayer',
          style: TextStyle(fontSize: 30, color: Colors.white),
        )
      ],
    );
  }

  cellTapped(int cellNumber) {
    var cell = cells.firstWhere((item) => item['cellNumber'] == cellNumber);

    if (cell['selected'] == null && win == null) {
      cell['selected'] = actualPlayer;
      if (actualPlayer == 1) {
        actualPlayer = 2;
      } else {
        actualPlayer = 1;
      }
      setState(() {});
      verifyWin();
    }
  }

  verifyWin() {
    var cellLeft = cells.any((cell) => cell['selected'] == null);
    var cellByNumber = (int number) =>
        cells.firstWhere((cell) => cell['cellNumber'] == number)['selected'];

    if (cellByNumber(1) == cellByNumber(2) &&
        cellByNumber(1) == cellByNumber(3)) {
      win = cellByNumber(1);
    } else if (cellByNumber(4) == cellByNumber(5) &&
        cellByNumber(4) == cellByNumber(6)) {
      win = cellByNumber(4);
    } else if (cellByNumber(7) == cellByNumber(8) &&
        cellByNumber(7) == cellByNumber(9)) {
      win = cellByNumber(7);
    } else if (cellByNumber(1) == cellByNumber(4) &&
        cellByNumber(1) == cellByNumber(7)) {
      win = cellByNumber(1);
    } else if (cellByNumber(2) == cellByNumber(5) &&
        cellByNumber(2) == cellByNumber(8)) {
      win = cellByNumber(2);
    } else if (cellByNumber(3) == cellByNumber(6) &&
        cellByNumber(3) == cellByNumber(9)) {
      win = cellByNumber(3);
    } else if (cellByNumber(1) == cellByNumber(5) &&
        cellByNumber(1) == cellByNumber(9)) {
      win = cellByNumber(1);
    } else if (cellByNumber(3) == cellByNumber(5) &&
        cellByNumber(3) == cellByNumber(7)) {
      win = cellByNumber(3);
    }

    if (win != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Juego terminado'),
          content: Text('Ganó $nameWinner'),
        ),
      ).then((value) => widget.restartGame());
    }

    if (!cellLeft) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Juego terminado'),
          content: Text('Empate'),
        ),
      ).then((value) => widget.restartGame());
    }
  }
}
