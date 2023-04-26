import 'package:flutter/material.dart';
import 'package:tic_tac_toe/enum/Box_shape.dart';
import 'package:tic_tac_toe/enum/game_state.dart';
import 'package:tic_tac_toe/widget/box_state_to_Icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isCross = true;
  GameState gameState = GameState.gameContinue;

  BoxState a = BoxState.empty;

  BoxState b = BoxState.empty;

  BoxState c = BoxState.empty;

  BoxState d = BoxState.empty;

  BoxState e = BoxState.empty;

  BoxState f = BoxState.empty;

  BoxState g = BoxState.empty;

  BoxState h = BoxState.empty;

  BoxState i = BoxState.empty;

  BoxState j = BoxState.empty;

  void gameReset() {
    setState(() {
      a = BoxState.empty;

      b = BoxState.empty;

      c = BoxState.empty;

      d = BoxState.empty;

      e = BoxState.empty;

      f = BoxState.empty;

      g = BoxState.empty;

      h = BoxState.empty;

      i = BoxState.empty;

      j = BoxState.empty;

      gameState = GameState.gameContinue;
    });
  }

  void gameStatus() {
    if (a == b && b == c && a != BoxState.empty) {
      if (a == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
    if (d == e && e == f && d != BoxState.empty) {
      if (d == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
    if (g == h && h == c && g != BoxState.empty) {
      if (g == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }

    //column wise won

    if (a == d && d == g && a != BoxState.empty) {
      if (a == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
    if (b == e && e == h && b != BoxState.empty) {
      if (b == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
    if (c == f && f == i && c != BoxState.empty) {
      if (c == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }

    //cross wise won
    if (a == e && e == i && a != BoxState.empty) {
      if (a == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
    if (c == e && e == g && c != BoxState.empty) {
      if (c == BoxState.close) {
        gameState = GameState.crossWon;
      } else {
        gameState = GameState.circleWon;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text('tic tac toe'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      "Turn: ${isCross ? "Cross" : "Circle"}",
                      style: const TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      crossAxisCount: 3,
                      children: [
                        InkWell(
                          onTap: () {
                            print("A tapped");
                            setState(() {
                              if (a == BoxState.empty) {
                                if (isCross) {
                                  a = BoxState.close;
                                } else {
                                  a = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: a),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("B Tapped");
                            setState(() {
                              if (b == BoxState.empty) {
                                if (isCross) {
                                  b = BoxState.close;
                                } else {
                                  b = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: b),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("C tapped");
                            setState(() {
                              if (c == BoxState.empty) {
                                if (isCross) {
                                  c = BoxState.close;
                                } else {
                                  c = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: c),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("D tapped");
                            setState(() {
                              if (d == BoxState.empty) {
                                if (isCross) {
                                  d = BoxState.close;
                                } else {
                                  d = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: d),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("E Tapped");
                            setState(() {
                              if (e == BoxState.empty) {
                                if (isCross) {
                                  e = BoxState.close;
                                } else {
                                  e = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: e),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("F tapped");
                            setState(() {
                              if (f == BoxState.empty) {
                                if (isCross) {
                                  f = BoxState.close;
                                } else {
                                  f = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: f),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("G tapped");
                            setState(() {
                              if (g == BoxState.empty) {
                                if (isCross) {
                                  g = BoxState.close;
                                } else {
                                  g = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: g),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("H tapped");
                            setState(() {
                              if (h == BoxState.empty) {
                                if (isCross) {
                                  h = BoxState.close;
                                } else {
                                  h = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: h),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("I tapped");
                            setState(() {
                              if (i == BoxState.empty) {
                                if (isCross) {
                                  i = BoxState.close;
                                } else {
                                  i = BoxState.circle;
                                }
                                isCross = !isCross;
                                gameStatus();
                              }
                            });
                          },
                          child: Container(
                            color: Colors.purple,
                            child: BoxStateToIcon(boxState: i),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            gameState != GameState.gameContinue
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.deepPurple.withOpacity(0.7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "${gameState == GameState.circleWon ? "Circle " : "Cross "} Won!!",
                            style: const TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () => gameReset(),
                          child: const Text(
                            "Play Again",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                : (a != BoxState.empty &&
                        b != BoxState.empty &&
                        c != BoxState.empty &&
                        d != BoxState.empty &&
                        e != BoxState.empty &&
                        f != BoxState.empty &&
                        g != BoxState.empty &&
                        h != BoxState.empty &&
                        i != BoxState.empty &&
                        gameState == GameState.gameContinue)
                    ? Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.deepPurple.withOpacity(0.7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Center(
                              child: Text(
                                "Match Draw",
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () => gameReset(),
                              child: const Text(
                                "Play Again",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(),
          ],
        ),
      ),
    );
  }
}
