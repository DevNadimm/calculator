import 'package:calculator/bmi_result.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  var ftController = TextEditingController();
  var inController = TextEditingController();
  var wtController = TextEditingController();
  var result = '' ;
  var bgColor = const Color(0xffffffff);
  var bmiMessage = '' ;
  var femaleContainerColor = const Color(0xff1A1F38);
  var maleContainerColor = const Color(0xff1A1F38);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Calculator()));
              },
              icon: const Icon(
                Icons.calculate_outlined,
                color: Colors.white,
              ))
        ],
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1.4),
        ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [

              //Male Female Parent Box
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.24,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: _femaleButtonOnTap,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.24,
                        width: MediaQuery.sizeOf(context).width * 0.36,
                        decoration: BoxDecoration(
                          color: femaleContainerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 75,
                                color: Colors.white,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 1.2),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    GestureDetector(
                      onTap: _maleButtonOnTap,
                      child: Container(
                        height: MediaQuery.sizeOf(context).height * 0.24,
                        width: MediaQuery.sizeOf(context).width * 0.36,
                        decoration: BoxDecoration(
                          color: maleContainerColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 75,
                                color: Colors.white,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    color: Colors.white,
                                    letterSpacing: 1.2),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),
        
              TextField(
                  controller: ftController,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white,fontSize: 17,),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text(
                      'Feet',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    hintText: 'Enter your height (Feet)',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xff746d8a),
                    ),
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff746d8a))),
                  )
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              TextField(
                  controller: inController,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white,fontSize: 17,),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text(
                      'Inches',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    hintText: 'Enter your height (Inches)',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xff746d8a),
                    ),
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff746d8a))),
                  )
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              TextField(
                  controller: wtController,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.white,fontSize: 17,),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    label: Text(
                      'Weight',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    hintText: 'Enter your weight (KG)',
                    hintStyle: TextStyle(
                      fontSize: 17,
                      color: Color(0xff746d8a),
                    ),
                    prefixIcon: Icon(Icons.monitor_weight),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Color(0xff746d8a))),
                  )
              ),
        
              const SizedBox(
                height: 30,
              ),
        
              GestureDetector(
                onTap: _calculateOnTap,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color(0xff1A1F38),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          letterSpacing: 0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _femaleButtonOnTap(){
    femaleContainerColor = const Color(0xff30354b);
    maleContainerColor = const Color(0xff1A1F38);
    setState(() {  });
  }

  _maleButtonOnTap(){
    maleContainerColor = const Color(0xff30354b);
    femaleContainerColor = const Color(0xff1A1F38);
    setState(() {  });
  }

  _calculateOnTap(){

    var ftString = ftController.text.toString();
    var inString = inController.text.toString();
    var wtString = wtController.text.toString();

    if (ftString != '' &&
        inString != '' &&
        wtString != '') {

      double feet = double.parse(ftString);
      double inch = double.parse(inString);
      double weight = double.parse(wtString);

      double tInch = (feet * 12) + inch;
      double tMeter = tInch * 0.0254;

      double bmi  = weight / (tMeter * tMeter);

      if (bmi<18.5){
        bgColor = Colors.blue;
        bmiMessage = 'Underweight';
      } else if (18.5 < bmi && bmi < 24.9) {
        bgColor = Colors.green;
        bmiMessage = 'Normal';
      } else if (25 < bmi && bmi < 29.9) {
        bgColor = Colors.orange;
        bmiMessage = 'Overweight';
      } else if (30 < bmi && bmi < 39.9) {
        bgColor = Colors.red;
        bmiMessage = 'Obese';
      } else if (30 < bmi ) {
        bgColor = Colors.red;
        bmiMessage = 'Extremely Obese';
      }

      setState(() {
        result = bmi.toStringAsFixed(2);
      });

    } else {

      bgColor = Colors.red;
      setState(() {
        result = 'ERROR';
      });
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => BMIResult(bmiResult: result, bgColorResult: bgColor, bmiMessageResult: bmiMessage,)));
  }
}
