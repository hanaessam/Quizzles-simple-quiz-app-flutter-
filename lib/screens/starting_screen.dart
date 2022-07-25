import 'package:flutter/material.dart';
import 'package:quizzles/models/background_screen_design.dart';
import 'package:quizzles/models/button_styles.dart';
import 'package:quizzles/screens/levels_screen.dart';

import 'about_screen.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Stack(
          children: [
            Background(),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 75.0, bottom: 10.0),
                    child: Container(
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/bulbLogo.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Quizzles',
                  style: TextStyle(
                    fontFamily: 'DaysOne',
                    color: Colors.white,
                    fontSize: 45.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Let\'s Play!',
                    style: TextStyle(
                      fontFamily: 'DaysOne',
                      color: Colors.amberAccent,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Text(
                  'Play now and level up',
                  style: TextStyle(
                    fontFamily: 'DaysOne',
                    color: Colors.white,
                    fontSize: 23.0,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LevelsScreen()))
                        .then((value) => setState(() {}));
                  },
                  child: WideButton('Play Now'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutScreen()))
                        .then((value) => setState(() {}));
                  },
                  child: WideButton('About'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
