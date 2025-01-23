import 'package:flutter/material.dart';
import '../../domain/usecases/convert_kg_to_lbs.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({Key? key}) : super(key: key);

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  final TextEditingController _controller = TextEditingController();
  double? _result;
  final ConvertKgToLbs _convertKgToLbs = ConvertKgToLbs();

  void _convert() {
    final double? kilograms = double.tryParse(_controller.text);
    if (kilograms != null) {
      setState(() {
        _result = _convertKgToLbs.execute(kilograms);
      });
    } else {
      setState(() {
        _result = null;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid number!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter weight in kilograms',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _convert,
            child: const Text('Convert to Pounds'),
          ),
          const SizedBox(height: 20),
          if (_result != null)
            Text(
              'Weight in Pounds: ${_result!.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}
