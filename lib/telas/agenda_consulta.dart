

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:repos/constans.dart';


import 'consultas_agendadas.dart';
enum SingingCharacter {  Becker, Padre, Cristo}
enum bbcharacter {   Cardiologista, Pediatra, ClinicoGeral, Traumatologista, Geriatra, Obstetra}
enum Datacharacter {   dia6   , dia7 , dia8, dia9, dia10, dia11}
enum horas { horas7, horas9, hora13 , horas15, horas18 ,horas20 }
class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}
class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.Becker;

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromRGBO(247, 246, 244, 1),
      child: Column(
        children: <Widget>[
          ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
            title: const Text('Hospital Padre Jeremias 2,1 KM',
            style: TextStyle(fontSize: 17),),
            leading: Radio<SingingCharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
            
              value: SingingCharacter.Padre,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
            title: const Text('Hospital Dom João Becker 6,5KM',
            style: TextStyle(fontSize: 17),),
            leading: Radio<SingingCharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
            
              value: SingingCharacter.Becker,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
            title: const Text('Hospital Cristo Redentor 11,3KM',
            style: TextStyle(fontSize: 17),),
            leading: Radio<SingingCharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
            
              value: SingingCharacter.Cristo,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
class Especialidade extends StatefulWidget {
  const Especialidade({super.key});

  @override
  State<Especialidade> createState() => _EspecialidadeState();
}
class _EspecialidadeState extends State<Especialidade> {
  bbcharacter? _character = bbcharacter.Cardiologista;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Cardiologista',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Cardiologista,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Pediatra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Pediatra,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Clínico Geral',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.ClinicoGeral,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
          Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Traumatologista',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Traumatologista,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Geriatra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Geriatra,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Obstetra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Obstetra,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
      ],
    )
    ;
  }
}
class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}
class _DataState extends State<Data> {
  Datacharacter? _character = Datacharacter.dia6;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('06/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia6,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('07/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia7,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('08/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia8,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
          Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('09/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia9,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('10/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia10,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('11/05',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<Datacharacter>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: Datacharacter.dia11,
                      groupValue: _character,
                      onChanged: (Datacharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
      ],
    )
    ;
  }
}
class hora extends StatefulWidget {
  const hora({super.key});

  @override
  State<hora> createState() => _horaState();
}
class _horaState extends State<hora> {
 horas? _character = horas.hora13;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('07:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.horas7,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('09:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.horas9,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('13:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.hora13,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
          Container(color: const Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('15:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.horas15,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('18:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.horas18,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: const EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('20:00',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<horas>(activeColor: const Color.fromRGBO(10, 10, 10, 1),
                    
                      value: horas.horas20,
                      groupValue: _character,
                      onChanged: (horas? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            
          ),
      ],
    )
    ;
  }
}

class agenda_consulta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 90.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
          child: Row(children:
             [ Container(
                  width:60,
                  height: 300,
                  color: appcolors.azul,
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
      backgroundColor: appcolors.azul,
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
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
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
            Container(
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
                child: const Column(
                  children: [ Text('Selecione o local',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),RadioExample(),
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
                child: const Column(
                  children: [ Text('Selecione a Especialidade',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Especialidade(),
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
                child: const Column(
                  children: [ Text('Selecione a data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Data(),
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
                child: const Column(
                  children: [ Text('Selecione o Horário',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),hora(),
                  ],
                ),
                
                    
                    
              ),
              
              
          
        ),
        Row (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromRGBO(255, 255, 255, 1);},
            ),),
          onPressed: (){Navigator.push(context, MaterialPageRoute(
                builder: (context){return const MyApp();}));}, child: const Text('Agendar',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Color(0xFF000000)),)),
              ] 
              ), const SizedBox(height: 10,)
        ],
        
          
        ),
        
        
      ),
      
      );
    
  }
}