// Project 4 - Build a Tic-Tac-Toe game
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tic-Tac-Toe',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _xTurn = true;
  final List<String> _board = <String>['', '', '', '', '', '', '', '', ''];
  int _xScore = 0;
  int _oScore = 0;

  void _tapped(int index) {
    setState(() {
      if (_xTurn && _board[index] == '') {
        _board[index] = 'X';
      } else if (!_xTurn && _board[index] == '') {
        _board[index] = 'O';
      }
      _xTurn = !_xTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    bool winnerFound = false;
    const List<List<int>> winningCombinations = <List<int>>[
      <int>[0, 1, 2], <int>[3, 4, 5], <int>[6, 7, 8], //Rows
      <int>[0, 3, 6], <int>[1, 4, 7], <int>[2, 5, 8], //Columns
      <int>[0, 4, 8], <int>[2, 4, 6] //Diagonals
    ];
    for (final List<int> combination in winningCombinations) {
      final String a = _board[combination[0]];
      final String b = _board[combination[1]];
      final String c = _board[combination[2]];
      if (a != '' && a == b && b == c) {
        winnerFound = true;
        if (a == 'X') {
          _xScore++;
        } else {
          _oScore++;
        }
        _showDialog(a);
        break;
      }
    }
    if (!_board.contains('') && !winnerFound) {
      _showDialog('draw');
    }
  }

  void _showDialog(String winner) {
    String message;
    if (winner == 'draw') {
      message = 'Draw';
    } else {
      message = '$winner is the winner!';
    }
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    _clearBoard();
                    Navigator.pop(context, 'Reset');
                  },
                  child: const Text('Play Again'))
            ],
          );
        });
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        _board[i] = '';
      }
    });
  }

  void _clearScore() {
    setState(() {
      _xScore = 0;
      _oScore = 0;
      _clearBoard();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tic-Tac-Toe'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue,
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Player X',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold, color: _xTurn ? Colors.orange : Colors.white),
                        ),
                        Text(_xScore.toString(), style: const TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    )),
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Player O',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold, color: !_xTurn ? Colors.orange : Colors.white),
                        ),
                        Text(_oScore.toString(), style: const TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    )),
              ],
            )),
            Expanded(
                flex: 4,
                child: GridView.builder(
                    itemCount: 9,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          _tapped(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Text(
                              _board[index],
                              style: const TextStyle(color: Colors.white, fontSize: 35),
                            ),
                          ),
                        ),
                      );
                    })),
            Expanded(
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black45,
                ),
                onPressed: _clearScore,
                child: const Text('Clear Score Board'),
              )
            ]))
          ],
        ));
  }
}
