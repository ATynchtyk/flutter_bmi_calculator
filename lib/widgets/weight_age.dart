import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget(
      {Key key,
      this.text,
      this.texttwo,
      @required this.minus,
      @required this.plus})
      : super(key: key);

  final String text;
  final String texttwo;
  final void Function() minus;
  final void Function() plus;

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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: minus,
                  child: const FaIcon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xff4C4F5D)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: plus,
                  child: const FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
