


import 'package:flutter/material.dart';
import 'package:repos/constans.dart';

import 'package:repos/telas/login.dart';

import 'package:repos/widgets/app.title.dart';
import 'package:repos/widgets/app_text.dart';
import 'package:repos/widgets/input_text.dart';


class criarconta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 160.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Center(
            child: SizedBox(
              width:270,
              height: 300, 
              child: Image.asset('assets/imagens/logoentrar.png'),),
          ),
        ),
      ),
      backgroundColor: appcolors.azul,
      body: SingleChildScrollView(
        child: SafeArea(child: Padding(padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ConstrainedBox(constraints: const BoxConstraints(maxHeight: 760,
             maxWidth: 500,
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(48),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 1),
                borderRadius: BorderRadius.all(Radius.circular(53)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTitle('Criar conta'),
                  const SizedBox(height: 20,),
                  inputText(placeholder:'Nome'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'CPF'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'Endereço'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'Email'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'senha'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'Confirmar senha'),
                  const SizedBox(height: 20,),
                  inputText(placeholder: 'Telefone'),
                   SizedBox(
                    width: double.infinity,
                    child: RichText(
                     text: TextSpan(
                      text: 'Ao criar uma conta você está aceitando nossos',
                      children: [
                        TextSpan(
                          text: 'Termos de Serviços',
                          style: TextStyle(color: appcolors.azul
                        )
                    ),
                    const TextSpan(
                          text: ' e ',
                    ),
                    TextSpan(
                          text: 'Política de Privacidade.',
                          style: TextStyle(color: appcolors.azul
                        )
                    ),
                    ]
                    ),
                    
                    
                  ),),
                  
                  
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return login();}),);},
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 16),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                      foregroundColor: Colors.white, backgroundColor: Colors.blue
                    ),
                     child: const Text('criar conta'),),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText('Já tem uma conta?'),
                    const SizedBox(width: 6,),
                    GestureDetector(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return login();
                      }));
                    },
                      child: AppText('entrar',
                      color:  const Color.fromARGB(255, 57, 133, 196)),
                    ),
                  ],
                )
                
                  
                  ],
              ),
            ),
            ),
          ],),
        ),),
      ),
    );
  }}



