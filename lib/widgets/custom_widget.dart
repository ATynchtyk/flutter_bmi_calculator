import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key key, this.widget}) : super(key: key);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff111327),
          ),
          child: Padding(padding: const EdgeInsets.all(20.0), child: widget),
        ),
      ),
    );
  }
}
