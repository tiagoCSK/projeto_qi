import 'package:flutter/material.dart';

class termodeuso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Termos de Uso'),
      ),
      body: Text('assets/lib/termosdeuso.txt')
    );
  }
}