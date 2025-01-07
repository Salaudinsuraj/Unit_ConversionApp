import 'package:flutter/material.dart';
import 'src/views/first_screen.dart';

void main() {
  runApp(KgToLbsConverter());
}

class KgToLbsConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kg to Lbs Converter'),
        ),
        body: ConverterScreen(),
      ),
    );
  }
}

