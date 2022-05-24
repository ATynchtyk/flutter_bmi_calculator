import 'package:flutter/material.dart';

class ButtonCalculate extends StatelessWidget {
   ButtonCalculate({this.onPressed,this.soz
    
  }) ;

  final String soz;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
     
      child: Container(
        height: 70.0,
        color: const Color(0xffF50D56),
        child:  Center(
          child: Text(
            soz,
            style: const TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
