import 'package:flutter/material.dart';

class tela extends StatelessWidget {
  const tela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(backgroundColor: Color.fromARGB(255, 50, 154, 214), 
 toolbarHeight: 150,
 

),
body: ElevatedButton(onPressed: (){}, child: Icon(Icons.data_array),),

    );
  }
}