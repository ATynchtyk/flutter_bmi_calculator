import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/widgets/custom_widget.dart';
import 'package:flutter_bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter_bmi_calculator/widgets/slaider_widget.dart';
import 'package:flutter_bmi_calculator/widgets/weight_age.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  Male,
  Female,
  Non,
}

class InputScreen extends StatefulWidget {
  const InputScreen({Key key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double _slaider = 180;
  int _weight = 60;
  int _age = 25;
  Color _activeColor = const Color.fromARGB(255, 76, 78, 100);
  Color _inActiveColor = const Color(0xff111327);
  bool _maleButton = false;
  bool _femaleButton = false;
  Gender _gender = Gender.Non;

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
              children: [
                CustomWidget(
                  onTap: (() {
                    setState(() {
                      // _maleButton = !_maleButton;
                      _gender = Gender.Male;
                    });
                  }),
                  // tus: _maleButton ? _activeColor : _inActiveColor,
                  tus: _gender == Gender.Male ? _activeColor : _inActiveColor,
                  widget: const GenderWidget(
                      icons: FontAwesomeIcons.person, text: 'male'),
                ),
                CustomWidget(
                  onTap: (() {
                    setState(() {
                      // _femaleButton = !_femaleButton;
                      _gender = Gender.Female;
                    });
                  }),
                  // tus: _femaleButton ? _activeColor : _inActiveColor,
                  tus: _gender == Gender.Female ? _activeColor : _inActiveColor,
                  widget: const GenderWidget(
                      icons: FontAwesomeIcons.personDress, text: 'female'),
                ),
              ],
            ),
          ),
          SlaiderWidget(
            onPressed: (double ozgorgonData) {
              setState(() {
                _slaider = ozgorgonData;
              });
            },
            slaiderText: _slaider.toInt(),
          ),
          Expanded(
            child: Row(
              children: [
                CustomWidget(
                  tus: const Color(0xff111327),
                  widget: WeightAgeWidget(
                    minus: () {
                      setState(() {
                        _weight--;
                      });
                    },
                    plus: () {
                      setState(() {
                        _weight++;
                      });
                    },
                    text: 'weight',
                    texttwo: _weight.toString(),
                  ),
                ),
                CustomWidget(
                  tus: const Color(0xff111327),
                  widget: WeightAgeWidget(
                    minus: () {
                      setState(() {
                        _age--;
                      });
                    },
                    plus: () {
                      setState(() {
                        _age++;
                      });
                    },
                    text: 'age',
                    texttwo: _age.toString(),
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
