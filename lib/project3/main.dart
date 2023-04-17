// Project 3 - Build an app where you guess a number

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: NumberForm(),
    );
  }
}

class NumberForm extends StatefulWidget {
  const NumberForm({super.key});

  @override
  State<NumberForm> createState() => _NumberFormState();
}

class _NumberFormState extends State<NumberForm> {
  late int _numberToGuess;
  late String _buttonText, _infoText;
  late bool _textFieldEnabled;


  @override
  void initState() {
    super.initState();
    _numberToGuess = Random().nextInt(100);
    _buttonText = 'Guess';
    _infoText = '';
    _textFieldEnabled = true;
  }

  void _resetState() {
    setState(() {
      _numberToGuess = Random().nextInt(100);
      _buttonText = 'Guess';
      _infoText = '';
      myController.text = '';
      _textFieldEnabled = true;
    });
  }

  final TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess My Number'),
        centerTitle: true,
      ),
      body:

      Center(
        child: Column(
          children: <Padding> [
            const Padding(
              padding: EdgeInsets.fromLTRB(50,30,50,10),
              child: Text(
                "I'm thinking of a number between 1 and 100",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50,10,50,20),
              child: Text(
                "It's your turn to guess my number!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
                ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text(
                _infoText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 45,
                    color: Colors.black45),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50,10,50,10),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: <BoxShadow> [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget> [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0,10,0,0),
                        child: Text(
                          'Try a number!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45
                          ),
                        ),
                      ),
                      // Add the input field
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: TextField(
                          controller: myController,
                          // Allow only numbers to be inputted
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                          enabled: _textFieldEnabled,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_buttonText == 'Reset'){
                                _resetState();
                              }
                              else{
                                setState(() {
                                  //print(' the number to guess is: $_numberToGuess ');
                                  if (int.tryParse(myController.text)! == _numberToGuess){
                                    _buttonText = 'Reset';
                                    _infoText = 'You tried ${myController.text} \n You guessed right.';
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                            title: const Text('You guessed right!'),
                                            content: Text('It was ${myController.text}'),
                                            actions: <Widget> [
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context, 'Reset');
                                                    _resetState();
                                                  },
                                                  child: const Text('Try again!')
                                              ),
                                              TextButton(
                                                  onPressed: (){
                                                    Navigator.pop(context, 'OK');
                                                    setState(() {
                                                      myController.text = '';
                                                      _textFieldEnabled = false;
                                                    });
                                                  },
                                                  child: const Text('OK')
                                              )
                                            ]
                                        );
                                      },
                                    );
                                  }
                                  else if (_numberToGuess > int.tryParse(myController.text)!){
                                    _infoText = 'You tried ${myController.text} \n Try higher';
                                  }
                                  else{
                                    _infoText = 'You tried ${myController.text} \n Try lower';
                                  }
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white38
                            ),
                            child: Text(_buttonText),
                          ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
