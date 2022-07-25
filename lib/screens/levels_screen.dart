import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzles/Levels/level_one.dart';
import 'package:quizzles/models/button_styles.dart';

class LevelsScreen extends StatefulWidget {
  @override
  _LevelsScreenState createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Colors.indigo, size: 45.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Levels',
                  style: TextStyle(
                    fontFamily: 'DaysOne',
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LevelOne()))
                          .then((value) => setState(() {}));
                    },
                    child: LevelButton(Colors.deepPurple.shade300,
                        Colors.deepPurple.shade500, '01'),
                  ),
                  LockedLevelsWidget(
                      Colors.pink.shade300, Colors.pink.shade700, '02'),
                  LockedLevelsWidget(Colors.amber, Colors.amber.shade700, '03'),
                  LockedLevelsWidget(
                      Colors.orange, Colors.orange.shade800, '04'),
                  LockedLevelsWidget(Colors.red, Colors.red.shade900, '05'),
                  LockedLevelsWidget(Colors.green, Colors.green.shade800, '06'),
                  LockedLevelsWidget(Colors.blue, Colors.blue.shade800, '07'),
                  LockedLevelsWidget(Colors.cyan, Colors.cyan.shade800, '08'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
