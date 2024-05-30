import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
enum Hospitais { becker, padre, cristo }
enum Especialidade { cardiologista, pediatra, clinicoGeral, traumatologista, geriatra, obstetra }
enum Data { dia6, dia7, dia8, dia9, dia10, dia11 }
enum Horas { horas7, horas9, horas13, horas15, horas18, horas20 }


class HospitaisWidget extends StatefulWidget {
   final Function(Hospitais)? onSelectHospital;

  const HospitaisWidget({Key? key, required this.onSelectHospital}) : super(key: key);

  @override
  
  _HospitaisWidgetState  createState() => _HospitaisWidgetState();
}

class _HospitaisWidgetState extends State<HospitaisWidget> {
  Hospitais? _hospitalSelecionado;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(247, 246, 244, 1),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: const EdgeInsets.all(1),
            iconColor: Colors.black,
            title: const Text(
              'Hospital Padre Jeremias 2,1 KM',
              style: TextStyle(fontSize: 17),
            ),
            leading: Radio<Hospitais>(
              activeColor: const Color.fromRGBO(10, 10, 10, 1),
              value: Hospitais.padre,
              groupValue: _hospitalSelecionado,
              onChanged: (Hospitais? novoHospitalSelecionado) {
                setState(() {
                  _hospitalSelecionado = Hospitais.padre;
                  
                });
                 if (widget.onSelectHospital != null) {
              widget.onSelectHospital!(_hospitalSelecionado!);
            }
              },
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(1),
            iconColor: Colors.black,
            title: const Text(
              'Hospital Dom João Becker 6,5KM',
              style: TextStyle(fontSize: 17),
            ),
            leading: Radio<Hospitais>(
              activeColor: const Color.fromRGBO(10, 10, 10, 1),
              value: Hospitais.becker,
              groupValue: _hospitalSelecionado,
              onChanged: (Hospitais? novoHospitalSelecionado) {
                setState(() {
                  _hospitalSelecionado = Hospitais.becker;
                  
                });
                 if (widget.onSelectHospital != null) {
              widget.onSelectHospital!(_hospitalSelecionado!);
            }
              },
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(1),
            iconColor: Colors.black,
            title: const Text(
              'Hospital Cristo Redentor 11,3KM',
              style: TextStyle(fontSize: 17),
            ),
            leading: Radio<Hospitais>(
              activeColor: const Color.fromRGBO(10, 10, 10, 1),
              value: Hospitais.cristo,
              groupValue: _hospitalSelecionado,
              onChanged: (Hospitais? novoHospitalSelecionado) {
                setState(() {
                  _hospitalSelecionado = Hospitais.cristo;
                  
                });
                 if (widget.onSelectHospital != null) {
              widget.onSelectHospital!(_hospitalSelecionado!);
            }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EspecialidadeWidget extends StatefulWidget {
  final Function(Especialidade)? onSelectEspecialidade;
    const EspecialidadeWidget({Key? key, this.onSelectEspecialidade})
      : super(key: key);

   @override
  _EspecialidadeWidgetState createState() => _EspecialidadeWidgetState();
}

class _EspecialidadeWidgetState extends State<EspecialidadeWidget> {
  Especialidade? _especialidadeSelecionada;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Cardiologista',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.cardiologista,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                     _especialidadeSelecionada = Especialidade.cardiologista;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Pediatra',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.pediatra,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                      _especialidadeSelecionada = Especialidade.pediatra;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Clínico Geral',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.clinicoGeral,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                       _especialidadeSelecionada = Especialidade.clinicoGeral;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
            ],
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Traumatologista',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.traumatologista,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                      _especialidadeSelecionada = Especialidade.traumatologista;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Geriatra',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.geriatra,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                      _especialidadeSelecionada = Especialidade.geriatra;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  'Obstetra',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Especialidade>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Especialidade.obstetra,
                  groupValue: _especialidadeSelecionada,
                  onChanged: (Especialidade? value) {
                    setState(() {
                      _especialidadeSelecionada = Especialidade.obstetra;
                     });
                     if (widget.onSelectEspecialidade != null) {
                      widget.onSelectEspecialidade!(_especialidadeSelecionada!);
                  }
                 },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DataWidget extends StatefulWidget {
  final Function(Data)? onSelectData;
   const DataWidget({Key? key, this.onSelectData})
      : super(key: key);

  @override
  _DataWidgetState createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  Data? _dataselecionada;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '06/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia6,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia6;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '07/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia7,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia7;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '08/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia8,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia8;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
            ],
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '09/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia9,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia9;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '10/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia10,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia10;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '11/05',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Data>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Data.dia11,
                  groupValue: _dataselecionada,
                  onChanged: (Data? value) {
                    setState(() {
                      _dataselecionada = Data.dia11;
                    });
                    if (widget.onSelectData != null) {
              widget.onSelectData!(_dataselecionada!);
            }
          },
        ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HorasWidget extends StatefulWidget {
  final Function(Horas)? onSelectHora;
   const HorasWidget({Key? key, required this.onSelectHora})
      : super(key: key);

  @override
  _HorasWidgetState createState() => _HorasWidgetState();
}

class _HorasWidgetState extends State<HorasWidget> {
  Horas? _horarioSelecionado;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '07:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas7,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas7;
                    });
          },
        ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '09:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas9,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas9;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '13:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas13,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas13;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          width: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '15:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas15,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas15;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '18:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas18,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas18;
                    });
                  },
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(1),
                iconColor: Colors.black,
                title: const Text(
                  '20:00',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Radio<Horas>(
                  activeColor: const Color.fromRGBO(10, 10, 10, 1),
                  value: Horas.horas20,
                  groupValue: _horarioSelecionado,
                  onChanged: (Horas? value) {
                    setState(() {
                      _horarioSelecionado = Horas.horas20;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
// Função para enviar os dados para o Firebase
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
    // Adicione outros campos conforme necessário
  });
}

