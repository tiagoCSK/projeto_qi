import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:repos/constans.dart';
import 'package:repos/telas/tela_inicial.dart';
import 'package:repos/widgets/input_text.dart';

class  perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 390,
        backgroundColor: appcolors.azul,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0,0,46,0),
          child: Column(
            children: [
              Icon(
                    color: Colors.black,
                    Icons.account_circle,
                    size: 250,),
             Row(
               children: [SizedBox( width: 240,),
                 Icon(
                        color: Colors.black,
                        Icons.photo_camera,
                        size: 40,),
                        
               ],
             ),
            ],
          ),
        ),),
        body: SafeArea(child: Padding(padding: const EdgeInsets.all(24),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text('Nome',style: TextStyle(fontSize: 25  ,color: Colors.black.withOpacity(0.3)),)
          ),
          Container(
            width: 300,
            height: 45,
            child: Text('João da silva',style: TextStyle(fontSize: 27  ,color: Colors.black87),),
          ),const Divider(),
          Container(
            child: Text('CPF',style: TextStyle(fontSize: 25  ,color: Colors.black.withOpacity(0.3)),)
          ),Container(
            width: 300,
            height: 45,child: Text('000.000.000-00',style: TextStyle(fontSize: 27  ,color: Colors.black87),),
          ),const Divider(),
          Container(
            child: Text('Endereço',style: TextStyle(fontSize: 25  ,color: Colors.black.withOpacity(0.3)),)
          ),Container(
            width: 300,
            height: 45,child: Text('Rua Floripa, n2, Gravatai',style: TextStyle(fontSize: 27  ,color: Colors.black87),),
          ),const Divider(),
          Container(
            child: Text('Email',style: TextStyle(fontSize: 25  ,color: Colors.black.withOpacity(0.3)),)
          ),Container(
            width: 300,
            height: 45,child: Text('Joao@gmail.com',style: TextStyle(fontSize: 27  ,color: Colors.black87),),
          ),const Divider(),
          Container(
            child: Text('Telefone',style: TextStyle(fontSize: 25  ,color: Colors.black.withOpacity(0.3)),)
          ),Container(
            width: 300,
            height: 45,color: Color.fromRGBO(255, 255, 255, 1),child: const Text('51999999999',style: TextStyle(fontSize: 27  ,color: Colors.black87),),
          ),const Divider(),
        ],
      ),
      
      )
    
        ));
  }
}