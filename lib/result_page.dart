import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/calculation_brain.dart';
import 'package:flutter_bmi_calculator/input_screen.dart';
import 'package:flutter_bmi_calculator/widgets/button_calculate.dart';


class ResultPage extends StatefulWidget {
  const ResultPage({this.height, this.weight});

  final double height;
  final double weight;

   @override
  _HomeScreenState createState() => _HomeScreenState();}

  class _HomeScreenState extends State<ResultPage> {

  

  @override
  void initState() {
    super.initState();

    calculationBrain.calculateBMI(widget.height,widget. height);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff090E21),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'жыйынтык',
                style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Container(
                color: const Color(0xff1D1E33),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    Text(
                      calculationBrain.getResult(),
                      style: const TextStyle(
                        fontSize: 35.0,
                        color: Color(0xff2BA669),
                      ),
                    ),
                    Text(
                      calculationBrain.getResultNumber(),
                      style: const TextStyle(
                          fontSize: 75.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      calculationBrain.getInterpretation(),
                      style:const TextStyle(fontSize: 35.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ButtonCalculate(
          soz: 'RE-CALCULATE',onPressed: (){
             Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const InputScreen()),
                      (Route<dynamic> route) => false);
          },
        ));
  }
}
