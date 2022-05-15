import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/widgets/custom_widget.dart';
import 'package:flutter_bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter_bmi_calculator/widgets/slaider_widget.dart';
import 'package:flutter_bmi_calculator/widgets/weight_age.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double _slaider = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E20),
        title: Center(child: Text('bmi calculator'.toUpperCase())),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                CustomWidget(
                  widget:
                      GenderWidget(icons: FontAwesomeIcons.male, text: 'male'),
                ),
                CustomWidget(
                  widget: GenderWidget(
                      icons: FontAwesomeIcons.female, text: 'female'),
                ),
              ],
            ),
          ),
          CustomWidget(
              widget: SlaiderWidget(
            onPressed: (double ozgorgonData) {
              setState(() {
                _slaider = ozgorgonData;
              });
            },
            slaiderText: _slaider.toInt(),
          )),
          Expanded(
            child: Row(
              children: const [
                CustomWidget(
                  widget: WeightAgeWidget(
                    text: 'weight',
                    texttwo: '60',
                  ),
                ),
                CustomWidget(
                  widget: WeightAgeWidget(
                    text: 'age',
                    texttwo: '25',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
