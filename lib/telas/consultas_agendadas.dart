import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ConsultasAgendadasScreen extends StatelessWidget {
  const ConsultasAgendadasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultas Agendadas'),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: FirebaseFirestore.instance.collection('consultas').get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final List<DocumentSnapshot> documents = snapshot.data!.docs;

            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, index) {
                final consulta = documents[index];
                return ListTile(
                  title: Text('hospital: ${consulta['hospital']}'),
                  subtitle: Text('Especialidade: ${consulta['especialidade']}\nHora: ${consulta['horario']}'),
                  trailing: Text('Data: ${consulta['data']}'),
                  
                  
                );
              },
            );
          }
        },
      ),
    );
  }
}
