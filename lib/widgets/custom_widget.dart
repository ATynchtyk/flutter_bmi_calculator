import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
   CustomWidget({Key key, this.widget,this.tus,this.onTap}) : super(key: key);

  final Widget widget;
  final Color tus;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tus,
            ),
            child: Padding(padding: const EdgeInsets.all(20.0), child: widget),
          ),
        ),
      ),
    );
  }
}
