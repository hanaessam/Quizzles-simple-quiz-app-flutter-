import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/background_screen_design.dart';
import '../models/button_styles.dart';


class astronomyQuiz {
  var images = ['q1', 'q2', 'q3', 'q4', 'q5', 'q6', 'q7', 'q8', 'q9', 'q10'];
  var questions = [
    'Which is the closest planet to the sun?',
    'What is the sun mainly made from?',
    'What are comets mostly made of?',
    'Which of these planets is the smallest?',
    'Which of these planets is the Largest?',
    'What is the great red spot on Jupiter?',
    'How many moons does Mars have?',
    'Which of these best describes the atmosphere surrounding Venus?',
    'Where is the asteroid belt?',
    'What is the 6th planet in the solar system?'
  ];

  var choices = [
    ['Venus', 'Earth', 'Mercury', 'Neptune'],
    ['Liquid Lava', 'Molten iron', 'Rock', 'Gas'],
    [
      'Dirty ice and dust',
      'Rusty metal',
      'Poisonous liquid',
      'Hot, liquid rock'
    ],
    ['Mercury', 'Jupiter', 'Uranus', 'Earth'],
    ['Mercury', 'Jupiter', 'Uranus', 'Earth'],
    ['A lake', 'A crater', 'A volcano', 'A storm'],
    ['50', '1', '2', '13'],
    ['Cold and snowy', 'Bright and sunny', 'Hot and poisonous', 'Cold and wet'],
    [
      'Between Earth and Mars',
      'Between Mars and Jupiter',
      'Between Earth and Venus',
      'Between Jupiter and Saturn'
    ],
    [
      'Jupiter',
      'Saturn',
      'Earth',
      'Neptune',
    ]
  ];

  var correctAnswers = [
    'Mercury',
    'Gas',
    'Dirty ice and dust',
    'Mercury',
    'Jupiter',
    'A storm',
    '2',
    'Hot and poisonous',
    'Between Mars and Jupiter',
    'Saturn'
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = astronomyQuiz();

class LevelOne extends StatefulWidget {
  const LevelOne({Key? key}) : super(key: key);

  @override
  State<LevelOne> createState() => _LevelOneState();
}

class _LevelOneState extends State<LevelOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Background(),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 150.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: Offset(3, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              'Question ${questionNumber + 1} of ${quiz.questions.length}',
                              style: const TextStyle(
                                  fontFamily: 'DaysOne',
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  spreadRadius: 3,
                                  blurRadius: 4,
                                  offset: Offset(3, 3),
                                )
                              ]),
                          child: Center(
                            child: Text(
                              'Score: $finalScore',
                              style: const TextStyle(
                                  fontFamily: 'DaysOne',
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    quiz.questions[questionNumber],
                    style: const TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 25.0),
                  ),
                ),
                Container(
                  width: 350,
                  height: 250,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(3, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(
                          'images/${quiz.images[questionNumber]}.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][0]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][1]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][2]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][3]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: () {
                            resetQuiz();
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black38,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: Offset(3, 3),
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                'Reset',
                                style: TextStyle(
                                    fontFamily: 'DaysOne',
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Summary(score: finalScore)))
                                .then((value) => setState(() {}));
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black38,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: Offset(3, 3),
                                  )
                                ]),
                            child: const Center(
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    fontFamily: 'DaysOne',
                                    color: Colors.white,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == (quiz.questions.length - 1)) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  const Summary({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Results',
                      style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Total correct answers :',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
                Text(
                  '$score out of 10 Questions',
                  style: const TextStyle(
                      fontFamily: 'DaysOne',
                      color: Colors.amber,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Container(
                    width: 300,
                    height: 370,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 7,
                          blurRadius: 15,
                          offset: Offset(10, 4),
                        )
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        colors: [
                          Colors.indigoAccent,
                          Colors.indigoAccent.shade700
                        ],
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          const Text(
                            'Your final score is',
                            style: TextStyle(
                                fontFamily: 'DaysOne',
                                color: Colors.white,
                                fontSize: 25.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: Offset(3, 3),
                                  )
                                ],
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [Colors.amber, Colors.amber.shade700],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$score' '0',
                                  style: const TextStyle(
                                      fontFamily: 'DaysOne',
                                      color: Colors.white,
                                      fontSize: 60.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
