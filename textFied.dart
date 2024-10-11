import 'package:flutter/material.dart';

class CustField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final String? Function(String?)? valid;
  const CustField({super.key,required this.hint,
    required this.controller, required this.valid});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:valid,
      controller:controller,
      decoration:InputDecoration(
        filled:true,
        fillColor:Colors.grey[200],
        border:OutlineInputBorder(
            borderRadius:BorderRadius.circular(40),
          borderSide:BorderSide(color:Color.fromARGB(255, 184, 184, 184)),),
        label:Text(hint, style:TextStyle(color:Colors.grey)),
        enabledBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(40),
          borderSide:BorderSide(color:Colors.grey),),

      ),
    );
  }
}

