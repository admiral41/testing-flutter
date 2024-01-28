import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  final int result;
  const Output({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
      ),
      body: Center(child: Text('Result is: $result')),
    );
  }
}
