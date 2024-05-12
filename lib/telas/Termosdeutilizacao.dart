import 'package:flutter/material.dart';
import 'package:repos/telas/Termos%20de%20utilizacao/Notainformativa.dart';
import 'package:repos/telas/Termos%20de%20utilizacao/Politicadeprivacidade.dart';
import 'package:repos/telas/Termos%20de%20utilizacao/termodeuso.dart';

class termosdeutilizacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text('Termos de utilização', style: TextStyle( color: Colors.black, fontWeight: FontWeight.normal, fontSize: 25, ),),
      ),
      body: Column (crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          const Divider(), 
          Row(
            children: [
              TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const Text('Termo de Uso', style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ),),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context){return termodeuso();}));},
                      ),const SizedBox( width: 210,),
                      TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: const Icon(
                  color: Colors.black,
                  Icons.chevron_right,
                  size: 60,),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context){return termodeuso();}));},
                
                      ),
            ],
          ),
        const Divider(),
        Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1), 
              ), 
              child: const Text('Política de Privacidade', style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ),),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context){return politicaprivacidade();}));},
            ),const SizedBox( width: 130,),
            TextButton(
                style: ButtonStyle( 
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return ;},
            ),),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){return politicaprivacidade();}));
                }, 
                child: const Icon(
                  color: Colors.black,
                  Icons.chevron_right,
                  size: 60,),)
          ],
        ),
        const Divider(),
        Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: const Text('Nota Informativa', style: TextStyle( color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ),),
              onPressed: () {Navigator.push(context, MaterialPageRoute(
                builder: (context){return notainfo();}));},
            ), const SizedBox( width: 185,),
            TextButton(
                style: ButtonStyle( 
            backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return ;},
            ),),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context){return politicaprivacidade();}));
                }, 
                child: const Icon(
                  color: Colors.black,
                  Icons.chevron_right,
                  size: 60,),)
          ],
        ),
        const Divider(),
      ]),
    );
  }
}