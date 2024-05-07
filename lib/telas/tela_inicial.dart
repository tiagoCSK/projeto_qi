



import 'login.dart';
import 'package:repos/telas/agenda_consulta.dart';
import 'package:repos/telas/entrar.dart';
import 'package:repos/telas/hospitais.dart';
import 'package:repos/telas/sobre_o_sus.dart';

import 'emergencia.dart';
import 'package:flutter/material.dart';
import 'criarconta.dart';

class tela extends StatelessWidget {
  const tela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [ Container(
        color: const Color.fromARGB(255, 57, 133, 196) ,
            
    width: 500.0,
    height: 215.0,
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start, 
    children: [
      Container(child: const Text('dasd'),
      
      width: 70,
      height: 70,),
      Row(children: [
        Container(
          width: 150,
          height: 70,
          child: const Row( children: [  Icon(Icons.account_circle,
          size: 50,
          ),
      Text('bem vindo',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),
      ])
      ,
      
      ),
      const SizedBox(
        width: 175,
      ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return login();}),);
        },
         child: const Text('entrar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),)),],),
      
        Column( crossAxisAlignment: CrossAxisAlignment.end,
        children:[
          Container(width: double.infinity,),
           
           ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return criarconta();}),);
        }, child: const Text('criar conta',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,),
        ))],),
      ]
      
    ),),
     
       Container(child: Center(
         child: const Text('categorias',
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
         ),),
       ),
       
            
    width: 500.0,
    height: 70.0,),
    
    Container(
    width: 500.0,
    height: 80.0,
    
    
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
      onPressed: (){Navigator.push(context, MaterialPageRoute(
            builder: (context){return agenda_consulta();}));}, child: const Icon(
              color: Colors.black,
              Icons.edit_calendar,
              size: 60,
          )),
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){return hospitais();}));
     }, child:const Icon(Icons.domain_add,
     size: 60,
     color: Colors.black,
          )),
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){return emergencia();}));}, child: const Icon(
              color: Colors.black,
              Icons.emergency,
              size: 60,),)
    ] 
    )),
    Row(
      children: [
        Column(
          children: [Container(
          width: 100,
          color: Color.fromRGBO(255, 255, 255, 1),
             child: const Text('Agendar\nConsulta',
             style: TextStyle(
               fontSize: 17,fontWeight: FontWeight.bold),),
           ),
           Container(
            width:195,

            )],),
        const Column(children: [Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0,20),
          child: Center(
            child: Text('Hospital',style: TextStyle(
               fontSize: 17,fontWeight: FontWeight.bold
            )),
          
          ),
        )],),
         const Column(children: [SizedBox(
        width: 55,
         height: 0,
         )]),
        const Column(children: [Padding(
          padding: EdgeInsets.fromLTRB(0,0, 0, 20),
          child: Center(child: Text('Emergência',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 17,
          ))),
        )],),
        Column(children: [Container(
          width: 1,
        )],)
      ],
    ),
    Container(
    width: 500.0,
    height: 90.0,
    color: const Color.fromARGB(255, 190, 26, 26),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
      onPressed: (){Navigator.push(context, MaterialPageRoute(
            builder: (context){return agenda_consulta();}));}, child: const Icon(
              color: Colors.black,
              Icons.health_and_safety,
              size: 60,
          )),
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){return hospitais();}));
     }, child:const Icon(Icons.domain_add,
     size: 60,
     color: Colors.black,
          )),
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){return login();}));}, child: const Icon(
              color: Colors.black,
              Icons.emergency,
              size: 60,),)
    ] 
    )),
    Container(width: 500.0,
    height: 332.0,
   ),
    Container(
    width: 500.0,
    height: 138.0,
    color: const Color.fromARGB(255, 57, 133, 196),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return Color.fromRGBO(255, 255, 255, 1);},
        ),),
      onPressed: (){Navigator.push(context, MaterialPageRoute(
            builder: (context){return agenda_consulta();}));}, child: const Icon(
              color: Colors.black,
              Icons.home,
              size: 60,
          )),
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return Color.fromRGBO(255, 255, 255, 1);},
        ),),
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){return hospitais();}));
     }, child:const Icon(Icons.event_note,
     size: 60,
     color: Colors.black,
          )),
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return Color.fromRGBO(255, 255, 255, 1);},
        ),),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){return sobre_o_sus();}));}, child: const Icon(
              color: Colors.black,
              Icons.person,
              size: 60,),)
    ] 
    )),
    
       ])); 
   
  
 


  }
  
}

class Tex {
}
