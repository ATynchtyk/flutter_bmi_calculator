import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget({Key key, this.text,this.texttwo}) : super(key: key);

  final String text;
  final String texttwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text.toUpperCase(),
          style: const TextStyle(
            fontSize: 25.0,
            color: Color(0xff797A85),
          ),
        ),
        Text(
          texttwo.toUpperCase(),
          style: const TextStyle(
              fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: FaIcon(
                  FontAwesomeIcons.minus,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
