import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  final String image_name;
  const Logo({super.key , required this.image_name});

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Container(height:50),
          Container(
              alignment:Alignment.center,
              padding:EdgeInsets.all(10),
              height: 80,
              width:80,
              decoration:BoxDecoration(
                color:Colors.grey[300],
                borderRadius:BorderRadius.circular(70),),
              child:Image.asset(image_name  , height:40, )
          ),
          Container(height:20)
        ]);
  }
}
