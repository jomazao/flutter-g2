import 'package:flutter/cupertino.dart';
import 'package:widgets_basicos/widgets/road_widget.dart';

class RidesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.vertical,
          children: [
            RoadWidget(),
            RoadWidget(),
            RoadWidget(),
            RoadWidget(),
            RoadWidget(),
            RoadWidget(),
          ],
        ),
      ),
    );
  }
}
