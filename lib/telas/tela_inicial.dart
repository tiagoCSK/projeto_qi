import 'package:repos/constans.dart';
import 'package:repos/telas/Termosdeutilizacao.dart';
import 'package:repos/telas/consultas_agendadas.dart';
import 'package:repos/telas/tela_perfil.dart';
import 'package:repos/telas/teste';
import 'login.dart';
import 'package:repos/telas/agenda_consulta.dart';
import 'package:repos/telas/sobre_o_sus.dart';
import 'emergencia.dart';
import 'package:flutter/material.dart';
import 'criarconta.dart';
import 'chat_page.dart';

class tela extends StatelessWidget {
  const tela({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body:Column(children: [ Container(
        color: const Color.fromARGB(255, 57, 133, 196) ,
            
    
    height: 215.0,
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.start, 
    children: [
      const SizedBox(width: 70,
      height: 70,child: Text(''),),
      Row(children: [
        const SizedBox(
          width: 150,
          height: 70,
          child: Row( children: [  Icon(Icons.account_circle,
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
     
       const SizedBox(width: 500.0,
    height: 70.0,child: Center(
         child: Text('categorias',
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
         ),),
       ),),
    
    SizedBox(
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
            builder: (context){return const AgendaConsulta();}));}, child: const Icon(
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
            builder: (context){return SelecaoFirebase();}));
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
          children: [const SizedBox(
          width: 100,
          
             child: Text('Agendar\nConsulta',
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
    SizedBox(
    width: 500.0,
    height: 90.0,
    
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
      onPressed: (){Navigator.push(context, MaterialPageRoute(
            builder: (context){return sobre_o_sus();}));}, child: Image.asset("assets/imagens/cruz.png", height: 61,),),
     ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return const Color.fromARGB(255, 57, 133, 196);},
        ),),
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){return const MyApp();}));
     }, child:const Icon(Icons.chat,
     size: 60,
     color: Colors.black,
          )),
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return appcolors.azul;},
        ),),onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context){return termosdeutilizacao();}));}, child: const Icon(
              color: Colors.black,
              Icons.info,
              size: 60,),)
    ] 
    )), 
     const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                SizedBox( width: 70, 
                  child: Text('sobre o SUS',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20,
                            )),
                ),
                
                 SizedBox(  width: 90,
                  child: Text(    'Fale com o SUS',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20,
                            )),
                ), 
                SizedBox( width: 100,
                  child: Text('Termos de Utilização',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20, 
                            )),
                )
              ],
                
              ),
    SizedBox(width: 500.0,
    height: 274.3,
    child: Image.asset('assets/imagens/imagen.inicio.png'),),
   
    Container( 
    width: 500.0,
    height: 138.0,
    color: appcolors.azul,
      child: Column(  
        children: [ const SizedBox(height: 25,),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return ;},
            ),),
          onPressed: (){Navigator.push(context, MaterialPageRoute(
                builder: (context){return const tela();}));}, child: const Icon(
                  color: Colors.black,
                  Icons.home,
                  size: 60,
              )),
               ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return ;},
            ),),
            onPressed: (){
          Navigator.push(context, MaterialPageRoute(
                builder: (context){return ConsultasAgendadasScreen();}));
               }, child:const Icon(Icons.event_note,
               size: 60,
               color: Colors.black,
              )),
              ElevatedButton(
                style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return ;},
            ),),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){return perfil();}));}, child: const Icon(
                  color: Colors.black,
                  Icons.person,
                  size: 60,),)
              ] 
              ),
              const Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(    'Inicio',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,
          )), Text(    'Agenda',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,
          )), Text('Perfil',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20, 
          ))
              ],
                
              )
        ],
      )),
    
       ])); 
   
  
 


  }
}

class Tex {
}
