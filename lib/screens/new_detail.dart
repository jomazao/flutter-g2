import 'package:flutter/material.dart';

class NewDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style1 = TextStyle(
      color: Color.fromRGBO(80, 80, 80, 1),
      fontWeight: FontWeight.bold,
    );

    var style2 = TextStyle(
      color: Color.fromRGBO(80, 80, 80, 1),
      fontWeight: FontWeight.w300,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.now_wallpaper_outlined,
                color: Color.fromRGBO(70, 112, 136, 1),
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Color.fromRGBO(70, 112, 136, 1)),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border,
                  color: Color.fromRGBO(70, 112, 136, 1)),
              title: Text('')),
          BottomNavigationBarItem(
              icon:
                  Icon(Icons.settings, color: Color.fromRGBO(70, 112, 136, 1)),
              title: Text('')),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.2)),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FRONTERA VENEZUELA',
                  style: TextStyle(
                    color: Color.fromRGBO(70, 112, 136, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 70,
                      child: Text(
                        'La tensa calma en la frontera por ejercicios militares de Venezuela',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(67, 67, 67, 1),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 30,
                      child: ClipOval(
                        child: Image.network(
                          'https://cdn.cienradios.com/wp-content/uploads/sites/3/2020/09/Nicol%C3%A1s-Maduro.jpg',
                          height: 50,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '7:30 a.m.',
                  style: style1,
                ),
                Text(
                  'Duque envía tropas a la frontera y convoca a otros presidentes en busca de apoyo nvía tropas a la frontera...',
                  style: style2,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '6:00 am.',
                  style: style1,
                ),
                Text(
                  'Maduro declara  estado de emergencia en la frontera, Venezuela no protege a  Colombia y nunca lo ha hecho"!!!...',
                  style: style2,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '5:30 a.m.',
                  style: style1,
                ),
                Text(
                  'Inician los ejercicios militares venezolanos en el puente Simón Bolivar, ciudad si planean o no llevar a cabo protestas es...',
                  style: style2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Ver menos',
                  style: TextStyle(
                    color: Color.fromRGBO(70, 112, 136, 1),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Ver descubrimiento   >'),
                    color: Colors.amber,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
