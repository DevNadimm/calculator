import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _display = '';
  String _result = '';
  String _operation = '';
  double _firstNum = 0;
  double _secondNum = 0;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'AC') {
        _display = '';
        _result = '';
        _operation = '';
        _firstNum = 0;
        _secondNum = 0;
      } else if (buttonText == 'C') {
        _display = '';
        _result = '';
      } else if (buttonText == '÷' ||
          buttonText == '×' ||
          buttonText == '−' ||
          buttonText == '+') {
        _firstNum = double.tryParse(_display) ?? 0;
        _operation = buttonText;
        _display = '';
      } else if (buttonText == '=') {
        _secondNum = double.tryParse(_display) ?? 0;
        if (_operation == '÷') {
          _result = (_firstNum / _secondNum).toString();
        } else if (_operation == '×') {
          _result = (_firstNum * _secondNum).toString();
        } else if (_operation == '−') {
          _result = (_firstNum - _secondNum).toString();
        } else if (_operation == '+') {
          _result = (_firstNum + _secondNum).toString();
        }
        _display = _result;
        _operation = '';
      } else {
        _display += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1.4),
        ),
        backgroundColor: appBarColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const BMICalculator(),
                ),
              );
            },
            icon: const Icon(Icons.fitness_center),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              controller: TextEditingController(text: _display),
              readOnly: true,
              showCursor: true,
              cursorColor: buttonTwoColor,
              autofocus: true,
              style: const TextStyle(fontSize: 45, color: Colors.white),
              decoration: InputDecoration(
                fillColor: buttonBackgroundColor,
                filled: true,
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          const Spacer(),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.6,
            decoration: BoxDecoration(
              color: buttonBackgroundColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(
                        label: 'AC',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '%',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: 'C',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '÷',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(
                        label: '1',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '2',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '3',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '×',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(
                        label: '4',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '5',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '6',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '−',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(
                        label: '7',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '8',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '9',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '+',
                        txColor: Colors.white,
                        bgColor: buttonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(
                        label: '00',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '0',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '.',
                        txColor: Colors.white,
                        bgColor: buttonOneColor,
                        onPressed: _buttonPressed,
                      ),
                      Button1(
                        label: '=',
                        txColor: Colors.black,
                        bgColor: equalButtonTwoColor,
                        onPressed: _buttonPressed,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  final String label;
  final Color txColor;
  final Color bgColor;
  final Function(String) onPressed;

  const Button1(
      {super.key,
      required this.label,
      required this.txColor,
      required this.bgColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: const Color(0xff0a0c15),
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: bgColor,
        radius: 36,
        child: TextButton(
          onPressed: () => onPressed(label),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w600, color: txColor),
          ),
        ),
      ),
    );
  }
}
