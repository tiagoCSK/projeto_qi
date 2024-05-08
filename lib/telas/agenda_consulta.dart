

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:repos/constans.dart';
enum SingingCharacter {  Becker, Padre, Cristo}
enum bbcharacter {   Cardiologista, Pediatra, ClinicoGeral, Traumatologista, Geriatra, Obstetra}

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
          ),ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
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
        Container(color: Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Cardiologista',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Cardiologista,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Pediatra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Pediatra,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Clínico Geral',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
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
          Container(color: Color.fromRGBO(255, 255, 255, 1), width: 200,
          child: Column(
                children: <Widget>[
                  ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Traumatologista',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Traumatologista,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Geriatra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
                      value: bbcharacter.Geriatra,
                      groupValue: _character,
                      onChanged: (bbcharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),ListTile(contentPadding: EdgeInsets.all(1),iconColor: Colors.black,
                    title: const Text('Obstetra',
                    style: TextStyle(fontSize: 17),),
                    leading: Radio<bbcharacter>(activeColor: Color.fromRGBO(10, 10, 10, 1),
                    
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

class agenda_consulta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 90.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
          child: Container( 
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
      ),
      backgroundColor: appcolors.azul,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                child:  Text
              ('Sua localização: Rua Ouro Preto 77',
              style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                    
                    
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
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
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
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
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
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child: const Column(
                  children: [ Text('Selecione a data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),RadioExample(),
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
              
                    decoration: BoxDecoration(color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(10),
                     border: const Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 3
                      ),
                     )    
                     
                      ),
                child: const Column(
                  children: [ Text('Selecione o Horário',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),RadioExample(),
                  ],
                ),
                    
                    
              ),
              
              
          
        ),
        ],
        
          
        ),
        
      )
      );
    
  }
}