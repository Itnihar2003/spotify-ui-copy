import 'package:flutter/material.dart';
class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black,title: Text("Search",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),actions: [Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.flip_camera_ios_outlined,color: Colors.white,size: 25,),
    ),],),);
  }
}