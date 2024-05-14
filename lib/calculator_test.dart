import 'package:flutter/material.dart';

class CalculatorTest extends StatefulWidget {
  const CalculatorTest({super.key});

  @override
  State<CalculatorTest> createState() => _CalculatorTestState();
}

class _CalculatorTestState extends State<CalculatorTest> {

  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.white),
              keyboardType: TextInputType.number,
              controller: _numOneTEController,
              decoration: const InputDecoration(
                  hintText: 'First Number',
                  label: Text('First Number')
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            TextField(
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.white),
              keyboardType: TextInputType.number,
              controller: _numTwoTEController,
              decoration: const InputDecoration(
                  hintText: 'Second Number',
                  label: Text('Second Number')
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 130,
                    child: ElevatedButton.icon(onPressed: _add,
                      icon: const Icon(Icons.add),
                      label: const Text('Add'),)),
                SizedBox(width: 130,
                    child: ElevatedButton.icon(onPressed: _subtract,
                      icon: const Icon(Icons.remove),
                      label: const Text('Subtract'),)),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 130,
                    child: ElevatedButton.icon(onPressed: _multiply,
                      icon: const Icon(Icons.close),
                      label: const Text('Multiply'),)),
                SizedBox(width: 130,
                    child: ElevatedButton(
                        onPressed: _divide, child: const Text('/   Divide'))),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            Text('Result: $_result', style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Colors.white),)
          ],
        ),
      ),
    );
  }


  void _add() {
    double numOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numOne + numTwo;
    setState(() {  });
  }

  void _subtract() {
    double numOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numOne - numTwo;
    setState(() {  });
  }

  void _multiply() {
    double numOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numOne * numTwo;
    setState(() {  });
  }

  void _divide() {
    double numOne = double.tryParse(_numOneTEController.text) ?? 0;
    double numTwo = double.tryParse(_numTwoTEController.text) ?? 0;
    _result = numOne / numTwo;
    setState(() {  });
  }

  @override
  void dispose() {
    super.dispose();
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
  }
}