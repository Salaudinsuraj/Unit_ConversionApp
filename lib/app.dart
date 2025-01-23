import 'package:flutter/material.dart';
import 'presentation/screens/converter_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Unit Conversion",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kg to Lbs Converter'),
        ),
        body: const ConverterScreen(),
      ),
    );
  }
}
