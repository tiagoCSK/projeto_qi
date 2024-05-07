import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:repos/constans.dart';

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
                height: 350,
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
                  children: [
                    Text('Selecione o Local',
                    style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
                    Text('Selecione o Local',
                    style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
                    Text('Selecione o Local',
                    style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
                    Text('Selecione o Local',
                    style: TextStyle(color: Color.fromRGBO(5, 5, 5, 1)),),
                  ],
                ),
                    
                    
              ),
          
        )],
          
        ),
        
      )
      );
    
  }
}