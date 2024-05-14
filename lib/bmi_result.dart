import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMIResult extends StatelessWidget {
  final String bmiResult;
  final Color bgColorResult;
  final String bmiMessageResult;
  const BMIResult({super.key ,required this.bmiResult, required this.bgColorResult, required this.bmiMessageResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff1A1F38),
        leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: const Icon(Icons.arrow_back_ios_new)),
        title: const Text('Result',style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 1.4),)
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .7,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(bmiMessageResult,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: bgColorResult,
                          letterSpacing: 1.4),),

                      const SizedBox(
                        height: 15,
                      ),

                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.3,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(minimum: 16, maximum: 40, ranges: <GaugeRange>[
                            GaugeRange(
                                startValue: 16, endValue: 18.4, color: Colors.blue),
                            GaugeRange(
                                startValue: 18.5, endValue: 24.9, color: Colors.green),
                            GaugeRange(
                                startValue: 25, endValue: 29.9, color: Colors.orange),
                            GaugeRange(
                                startValue: 30, endValue: 39.9, color: Colors.red),
                          ], pointers: <GaugePointer>[
                            NeedlePointer(value: double.tryParse(bmiResult) ?? 0)
                          ], annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Text(bmiResult,
                                    style: TextStyle(
                                        color: bgColorResult,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                angle: 90,
                                positionFactor: 0.5)
                          ])
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
        )
        ),
    );
  }
}
