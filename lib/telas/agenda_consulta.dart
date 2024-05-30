

import 'package:flutter/material.dart';
import 'package:repos/telas/agendamentos.dart';
import 'package:repos/telas/consultas_agendadas.dart';


class AgendaConsulta extends StatefulWidget {
  const AgendaConsulta({Key? key}) : super(key: key);

  @override
  
  _AgendaConsultaState createState() => _AgendaConsultaState();
}

class _AgendaConsultaState extends State<AgendaConsulta> {
  Hospitais? _hospitalSelecionado;
  Especialidade? _especialidadeSelecionada;
  Data? _dataSelecionada;
  Horas? _horarioSelecionado; 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 90.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
          child: Row(children:
             [ Container(
                  width:60,
                  height: 300,
                  color: Colors.blue,
                  child:
                   const Padding(
                     padding: EdgeInsets.fromLTRB(0, 0, 90, 0),
                     child: Icon(
                                       color: Colors.black,
                                       Icons.account_circle,
                                       size: 60,
                                   ),
                                   
                   ),
                  ),const Text('Agendar Consulta',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
              
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 0,
                width: 429,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 429,
                padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                       ),
              
                    decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child:  const Text
              ('Sua localização: Rua Ouro Preto 77',
              style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
                    
                    
              ),
              
              
            ),
            const SizedBox(
              height: 0,
                width: 429,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 230,
                width: 429,
                padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                       ),
              
                    decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child:    Column(
                  children: [  const Text('Selecione o local',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  HospitaisWidget(onSelectHospital: (hospitais) {
                    setState(() {
                      _hospitalSelecionado = hospitais;
                    });
                  })
                  ],
                ),
                    
                    
              ),
              
              
          
        ),
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 230,
                width: 429,
                padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                       ),
              
                    decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child:  Column(
                  children: [ const Text('Selecione a Especialidade',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  EspecialidadeWidget(
                    onSelectEspecialidade: (especialidade) {
                      setState(() {
                        _especialidadeSelecionada = especialidade;
                      });
                    },
                  ),
                  ],
                ),
                    
                    
              ),
              
              
          
        ),
        Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 230,
                width: 429,
                padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                       ),
              
                    decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child:  Column(
                  children: [ const Text('Selecione a data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  DataWidget(
                    onSelectData: (data) {
                      setState(() {
                        _dataSelecionada = data;
                      });
                    },
                  ),
                  ],
                ),
                    
                    
              ),
              
              
          
        ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 230,
                width: 429,
                padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                       ),
              
                    decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child:  Column(
                  children: [ const Text('Selecione o Horário',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  HorasWidget(onSelectHora: (horario) {
                    setState(() {
                      _horarioSelecionado = horario as Horas?;
                    });
                  })
                  ],
                ),
                
                    
                    
              ),
              
              
          
        ),
        
     
      Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Captura dos dados selecionados
                    String? hospitalSelecionado;
                    String? especialidadeSelecionada;
                    String? dataSelecionada;
                    String? horarioSelecionado;

                    // Lógica para capturar os valores selecionados dos RadioButtons
                    if (_hospitalSelecionado != null) {
                      hospitalSelecionado = _hospitalSelecionado.toString().split('.').last;
                    }

                    if (_especialidadeSelecionada != null) {
                      especialidadeSelecionada = _especialidadeSelecionada.toString().split('.').last;
                    }

                    if (_dataSelecionada != null) {
                      dataSelecionada = _dataSelecionada.toString().split('.').last;
                    }

                    if (_horarioSelecionado != null) {
                      horarioSelecionado = _horarioSelecionado.toString().split('.').last;
                    }

                    // Envio dos dados para o Firebase
                    enviarDadosParaFirebase(
                      hospital: hospitalSelecionado,
                      especialidade: especialidadeSelecionada,
                      data: dataSelecionada,
                      horario: horarioSelecionado,
                    );

                    // Navegação para a próxima tela
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConsultasAgendadasScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Agendar',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

