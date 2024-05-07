
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:repos/constans.dart';
import 'package:repos/telas/criarconta.dart';
import 'package:repos/telas/tela_inicial.dart';
import 'package:repos/widgets/app.title.dart';
import 'package:repos/widgets/app_text.dart';
import 'package:repos/widgets/input_text.dart';
class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(
        backgroundColor: appcolors.azul,
        toolbarHeight: 160.0,
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
          child: Center(
            child: Container(
              width:270,
              height: 300, 
              child: Image.asset('assets/imagens/logoentrar.png'),),
          ),
        ),
      ),
      backgroundColor: appcolors.azul,
      body: SingleChildScrollView(
        child:  SafeArea(child: Padding(padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ConstrainedBox(constraints: const BoxConstraints(maxHeight: 500,
           maxWidth: 500,
          ),
          child: Container(
            width: double.infinity,
            height: 430,
            padding: const EdgeInsets.all(48),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1),
              borderRadius: BorderRadius.all(Radius.circular(53)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTitle('Login'),
                const SizedBox(height: 20,),
                inputText(placeholder:'Email ou CPF'),
                const SizedBox(height: 20,),
                inputText(placeholder: 'Senha'),
                const SizedBox(height: 20,),
                 SizedBox(
                  width: double.infinity,
                  child: AppText('esqueceu sua senha?', textAlign: TextAlign.end,
                  color: Colors.white.withOpacity(0.5),
                  ),
                ),SizedBox(height: 20,),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return tela();}),);},
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 16),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    foregroundColor: Colors.white, backgroundColor: Colors.blue
                  ),
                   child: const Text('entrar'),),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText('Não em uma conta?'),
                    SizedBox(width: 6,),
                    GestureDetector(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return criarconta();
                      }));
                    },
                      child: AppText('Criar conta',
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
    ));
  }}



