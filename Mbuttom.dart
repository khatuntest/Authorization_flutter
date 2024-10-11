import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  final String text;
  final void Function()? Fun_OnTop;

  const ButtonField({super.key,required this.text,
    required this.Fun_OnTop   });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        height:40,
        color:Colors.black54 ,
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20),
        ),
        onPressed:Fun_OnTop,
        child:Text(text ,
        style: TextStyle(fontSize:25,
            fontWeight:FontWeight.bold,color:Colors.white))
    );
  }
}
