


import 'package:repos/telas/agenda_consulta.dart';
import 'package:repos/telas/hospitais.dart';
import 'package:repos/telas/sobre_o_sus.dart';

import 'emergencia.dart';
import 'package:flutter/material.dart';
import 'perfil.dart';

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
        ElevatedButton(onPressed: (){}, child: const Text('entrar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),)),],),
      
        Column( crossAxisAlignment: CrossAxisAlignment.end,
        children:[
          Container(width: double.infinity,),
           
           ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return perfil();}),);
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
    color: Colors.black,
    
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
          width: 150,
          color: Colors.amber,
           child: const Center(
             child: Text('Agendar',
             
             style: TextStyle(fontWeight: FontWeight.bold),),
           )),
           Container(
            width: 200,
            child: const Center(
              child: Text(
              'Consulta',style: TextStyle(fontWeight: FontWeight.bold
                         ),),
            ))],),
        const Column(children: [Center(
          child: Text('Hospital',style: TextStyle(fontWeight: FontWeight.bold
          )),
        )],),
        const Column(children: [Center(child: Text('Emergência',style: TextStyle(fontWeight: FontWeight.bold
        )))],),
        Column(children: [Container(
          width: 1,
        )],)
      ],
    ),
    Container(
    width: 500.0,
    height: 150.0,
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
            builder: (context){return sobre_o_sus();}));}, child: const Icon(
              color: Colors.black,
              Icons.emergency,
              size: 60,),)
    ] 
    )),
    Container(width: 500.0,
    height: 250.0,
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
