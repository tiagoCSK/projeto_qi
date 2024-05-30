import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void enviarDadosParaFirebase({
  String? hospital,
  String? especialidade,
  String? data,
  String? horario,
}) {
  FirebaseFirestore.instance.collection('consultas').add({
    'hospital': hospital,
    'especialidade': especialidade,
    'data': data,
    'horario': horario,
   
  });
}

class ConsultasAgendadasScreen extends StatelessWidget {
  const ConsultasAgendadasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas Agendadas'),
      ),
      body: const Center(
        child: Text('Lista de consultas agendadas aqui...'),
      ),
    );
  }
}