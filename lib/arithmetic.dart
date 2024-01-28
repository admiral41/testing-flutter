import 'package:flutter/material.dart';
import 'package:testingclass/arithmetic_view.dart';
import 'package:testingclass/output.dart';

class ArthimeticView extends StatefulWidget {
  const ArthimeticView({super.key});

  @override
  State<ArthimeticView> createState() => _ArthimeticViewState();
}

class _ArthimeticViewState extends State<ArthimeticView> {
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  late Arithmetic arithmetic;
  final gap = const SizedBox(height: 10);
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _firstController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Number',
                ),
              ),
              gap,
              TextField(
                controller: _secondController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Number',
                ),
              ),
              gap,
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      arithmetic = Arithmetic();
                      setState(() {
                        result = arithmetic.add(
                            int.parse(_firstController.text),
                            int.parse(_secondController.text));
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Output(result: result)),
                      );
                    },
                    child: const Text('Add',
                        style: TextStyle(color: Colors.black)),
                  )),
              gap,
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      arithmetic = Arithmetic();
                      setState(() {
                        result = arithmetic.sub(
                            int.parse(_firstController.text),
                            int.parse(_secondController.text));
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Output(result: result)),
                      );
                    },
                    child: const Text('Subtract',
                        style: TextStyle(color: Colors.black)),
                  )),
            ]),
      ),
    );
  }
}
