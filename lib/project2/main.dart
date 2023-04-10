// Project 2 - Build a number checker app that checks if a number is squared or cubed
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
  final TextEditingController myController = TextEditingController();
  String _checkResult = '';

  bool isInteger(num value) =>
      value is int || double.parse(value.toStringAsFixed(2)) == value.roundToDouble();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Shapes'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          // Add the directions for the user
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Please input a number to see if it is square or cubed',
              style: TextStyle(fontSize: 22),
            ),
          ),
          // Add the input field
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: myController,
              // Allow only numbers to be inputted
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
            ),
          ),
        ],
      ),
      // Add the Action Button to check the number
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog with the result
        onPressed: () {
          setState(() {
            final int number = int.tryParse(myController.text)!;
            final num squareRoot = pow(number, 1/2);
            final num cubeRoot = pow(number, 1/3);

            if ((isInteger(squareRoot) || isInteger(cubeRoot)) && number != 1){
              if (isInteger(squareRoot) && isInteger(cubeRoot)){
                _checkResult = 'Number ${myController.text} is both SQUARED and CUBED.';
              }
              else if (isInteger(squareRoot)){
                _checkResult = 'Number ${myController.text} is SQUARE.';
              }
              else if (isInteger(cubeRoot)){
                _checkResult = 'Number ${myController.text} is CUBED.';
              }
            }
            else{
              _checkResult = 'Number ${myController.text} is neither CUBED nor SQUARE.';
            }
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text(_checkResult),
              );
            },
          );
        },
        tooltip: 'Check the number!',
        child: const Icon(Icons.check),
      ),
    );
  }
}
