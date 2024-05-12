import 'package:flutter/material.dart';
import 'package:repos/constans.dart';

class agendamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 60.0,
        title: Container( color: appcolors.azul,
              width:300,
              height: 50, 
              child: Center(child: Text('Consultas agendadas',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))
              ),
          
        
      ), backgroundColor: appcolors.azul,
      body:  SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child:  Row(
            children: [
              Column(  children: [ 
                Row(
                  children: [
                    Container(  
                      height: 588,
                      child: Image.asset('assets/imagens/telaconsulta.jpg'),
                      
                    ),
                    Container(  
                  height: 588,
                  child: Image.asset('assets/imagens/hospitalj.jpeg'),
                  
                ),
                 
                  ],
                ), 
                SizedBox( height: 22,),
                 
                 SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [SizedBox( width: 0,),
                      Container(
                            height: 230,
                            width: 429,
                            
                          
                                decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                                  borderRadius: BorderRadius.circular(10),
                                 border: const Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 3
                                  ),
                                 )    
                                 
                                  ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [ 
                                Text('Local: Hospital Padre Jeremias',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                 SizedBox( height: 5,),
                                Text('Especialidade: Clinico Geral',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                 SizedBox( height: 5,),
                                Text('Data: 08/05',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                SizedBox( height: 5,),
                                Text('hora: 09:00',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                                
                                
                          ), const SizedBox( width: 40,),
                          Container(
                            height: 230,
                            width: 429,
                            
                          
                                decoration: BoxDecoration(color: const Color(0xFFFAFAFA),
                                  borderRadius: BorderRadius.circular(10),
                                 border: const Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 3
                                  ),
                                 )    
                                 
                                  ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [ 
                                Text('Local: Hospital Dom João Becker',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                SizedBox( height: 5,),
                                Text('Especialidade: Cardiologista',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                SizedBox( height: 5,),
                                Text('Data: 11/05',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text('hora: 13:00',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                                
                                
                          ),
                          SizedBox( width: 0),
                    ],
                  ),
              
              )],),
            ],
          ),
      )
      );
    
  }
}