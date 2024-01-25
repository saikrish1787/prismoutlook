import 'package:flutter/material.dart';

class alerts_page extends StatelessWidget{
    const alerts_page({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
      title:const  Text("Prism Alerts"),
     ),
      body:const Center(
        child:Text("This is a alert page"),
      ),
    );
  }
  
}