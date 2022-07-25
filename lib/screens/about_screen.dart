import 'package:flutter/material.dart';
import 'package:quizzles/models/background_screen_design.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Background(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontFamily: 'DaysOne',
                          color: Colors.white,
                          fontSize: 30.0),
                    ),
                  ),
                  Text(
                    'Quizzles is quiz game app that: ',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 25.0),
                  ),
                  Text(
                    '1. is fun to use',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Text(
                    '2. has multiple levels',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Text(
                    '3. each level has a new topic',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
