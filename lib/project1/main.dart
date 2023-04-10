// Project 1 - Build a currency converter app

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Currency converter';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: const ConverterForm(),
      ),
    );
  }
}

class ConverterForm extends StatefulWidget {
  const ConverterForm({super.key});

  @override
  ConverterFormState createState() {
    return ConverterFormState();
  }
}

class ConverterFormState extends State<ConverterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _formValue = TextEditingController();
  final double _rate = 4.93; // Set exchange rate
  double _valueToConvert = 0.0;
  String _convertedValue = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: Column(children: <Widget>[
          Image.asset('images/currency_converter.png', height: 200),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              controller: _formValue,
              decoration: const InputDecoration(
                hintText: 'enter the amount in EUR',
              ),
              keyboardType: TextInputType.number,
              // Validate input
              validator: (String? value) {
                if (value == null || value.isEmpty || double.tryParse(value) == null) {
                  return 'please enter a number';
                }
                return null;
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // If form is validated then calculate the RON value else
              // return initial values
              if (_formKey.currentState!.validate()) {
                setState(() {
                  _valueToConvert = double.parse(_formValue.text) * _rate;
                  _convertedValue = '${_valueToConvert.toStringAsFixed(2)} RON';
                });
              } else {
                setState(() {
                  _valueToConvert = 0.0;
                  _convertedValue = '';
                });
              }
            },
            style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white38),
            child: const Text('CONVERT!'),
          ),
          Text(_convertedValue, style: const TextStyle(color: Colors.black54, fontSize: 30)),
        ]),
      ),
    );
  }
}
