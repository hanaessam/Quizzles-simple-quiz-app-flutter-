import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class WideButton extends StatelessWidget {
  String text;
  WideButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'DaysOne',
            color: Colors.indigo.shade900,
            fontSize: 32.0,
          ),
        ),
      ),
    );
  }
}

class LevelButton extends StatelessWidget {
  dynamic color1, color2;
  String level;
  LevelButton(this.color1, this.color2, this.level);
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ClipPolygon(
          sides: 5,
          borderRadius: 8.0,
          boxShadows: [
            PolygonBoxShadow(
              color: Colors.black,
              elevation: 5.0,
            ),
          ],
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [color1, color2],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Level',
                  style: TextStyle(
                    fontFamily: 'DaysOne',
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  level,
                  style: TextStyle(
                    fontFamily: 'DaysOne',
                    color: Colors.white,
                    fontSize: 22.0,
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

class ChoiceButton extends StatelessWidget {
  var choice;
  ChoiceButton(this.choice);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 3,
              blurRadius: 4,
              offset: Offset(3, 3),
            )
          ]),
      child: Center(
        child: Text(
          choice,
          style: TextStyle(
              fontFamily: 'DaysOne',
              color: Colors.indigo.shade900,
              fontSize: 20.0),
        ),
      ),
    );
  }
}

class LockedLevel extends StatelessWidget {
  const LockedLevel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPolygon(
      sides: 5,
      borderRadius: 8.0,
      child: Container(
          color: Colors.black38,
          child: Icon(
            Icons.lock,
            color: Colors.amber,
            size: 45,
          )),
    );
  }
}

class LockedLevelsWidget extends StatelessWidget {
  dynamic color1, color2;
  String level;
  LockedLevelsWidget(this.color1, this.color2, this.level);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LevelButton(color1, color2, level),
        LockedLevel(),
      ],
    );
  }
}
