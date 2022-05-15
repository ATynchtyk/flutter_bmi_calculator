import 'package:flutter/material.dart';

class SlaiderWidget extends StatelessWidget {
  const SlaiderWidget({Key key, this.onPressed, this.slaiderText})
      : super(key: key);

  final Function(double value) onPressed;
  final int slaiderText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xff1D1E32)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'height'.toUpperCase(),
                style: const TextStyle(
                    fontSize: 30.0, color: Colors.white, letterSpacing: 1.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    slaiderText.toString(),
                    style: const TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'cm',
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ],
              ),
              Slider(
                value: slaiderText.toDouble(),
                max: 220.0,
                activeColor: const Color(0xffB5B5BB),
                inactiveColor: const Color(0xff686976),
                thumbColor: const Color(0xffF50D56),
                onChanged: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
