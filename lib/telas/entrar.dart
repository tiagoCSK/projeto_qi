import 'package:flutter/material.dart';
import 'package:repos/constans.dart';

class entrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 160.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Center(
            child: Container(
              width:270,
              height: 100, 
              child: Image.asset('assets/imagens/logoentrar.png'),),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        TextFormField(
          autofocus: true,
          keyboardType: TextInputType.number,
          style: const TextStyle(color: Color(0xFF000000),fontSize: 40,),
          decoration: const InputDecoration(
            labelText: "CPF",
            labelStyle: TextStyle(color:  Color.fromARGB(255, 32, 32, 32))
          )),
          Divider(),
          TextFormField(
          autofocus: true,
          obscureText: true,
          keyboardType: TextInputType.text,
          style: const TextStyle(color: Color(0xFF000000),fontSize: 40,),
          decoration: const InputDecoration(
            labelText: "SENHA",
            labelStyle: TextStyle(color:  Color.fromARGB(255, 32, 32, 32))
          )),
          Divider(),
          ButtonTheme(child:
          ElevatedButton(
            style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {return  const Color.fromARGB(255, 57, 133, 196);},
        ),),
        onPressed: (){},
          child: Text("Entrar",
          style: TextStyle(color: Color.fromRGBO(253, 253, 253, 1)),
          ),))
        ])
    ),
    );
  }
}