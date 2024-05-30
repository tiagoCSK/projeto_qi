import 'package:flutter/material.dart';
import 'package:repos/telas/tela_inicial.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const gggg());
}

class gggg extends StatelessWidget {
  const gggg({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: tela(),
    );
  }
}

