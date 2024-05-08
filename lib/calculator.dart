import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var displayDigit = '';
  var result = '';
  var bgColor = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),

        title: const Text(
          'Calculator',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1.4),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),


      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.28,
            decoration: const BoxDecoration(
                color: Color(0xff1A1F38),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(34),
                    bottomRight: Radius.circular(34))),
          ),



          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.024,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(

                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4E4CA2FF),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            'AC',
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '( )',
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '%',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '/',
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.024,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            'x',
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.024,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.024,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.024,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Image(image: AssetImage('images/dot.jpg')
                      ),
                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),

                    ),
                  ),

                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.024
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.22,
                      height: MediaQuery.sizeOf(context).width * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xff4e4ca2ff),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Center(
                          child: Text(
                            '=',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
