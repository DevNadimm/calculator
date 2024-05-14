import 'package:calculator/bmi_calculator.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1.4
        ),),
        backgroundColor: const Color(0xff1A1F38),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BMICalculator()));
              },
              icon: const Icon(Icons.fitness_center))
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              controller: TextEditingController(),
              readOnly: true,
              showCursor: true,
              autofocus: true,
              style: const TextStyle(fontSize: 45),
              decoration: const InputDecoration(

                fillColor: Color(0xff1A1F38),
                filled: true,
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),

          const Spacer(),

          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.6 ,
            decoration: const BoxDecoration(
              color:  Color(0xff1A1F38),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(label: 'C', txColor: Colors.lightBlue,),
                      Button1(label: '/', txColor: Colors.lightBlue,),
                      Button1(label: 'X', txColor: Colors.lightBlue,),
                      Button1(label: 'AC', txColor: Colors.lightBlue,),
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(label: '1', txColor: Colors.white,),
                      Button1(label: '2', txColor: Colors.white,),
                      Button1(label: '3', txColor: Colors.white,),
                      Button1(label: '-', txColor: Colors.lightBlue,),
                    ],
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Button1(label: '4', txColor: Colors.white,),
                      Button1(label: '5', txColor: Colors.white,),
                      Button1(label: '6', txColor: Colors.white,),
                      Button1(label: '+', txColor: Colors.lightBlue,),
                    ],
                  ),

                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Button1(label: '7', txColor: Colors.white,),
                                Button1(label: '8', txColor: Colors.white,),
                                Button1(label: '9', txColor: Colors.white,),
                              ],
                            ),

                            SizedBox(
                              height: 18,
                            ),
                        
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Button1(label: '%', txColor: Colors.white,),
                                Button1(label: '0', txColor: Colors.white,),
                                Button1(label: '.', txColor: Colors.white,),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(
                        width: 24,
                      ),

                      Container(
                        height: 160,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Center(
                            child: Text(
                          '=',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 45,
                              color: Color(0xff222949)
                          ),
                        )),
                      )
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

  const Button1({super.key, required this.label, required this.txColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: const Color(0xff0a0c15),
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: const Color(0xff222949
        ),
        foregroundColor: txColor,
        radius: 36,
        child: Text(label,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
