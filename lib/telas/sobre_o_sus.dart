import 'package:flutter/material.dart';

class sobre_o_sus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Sobre o SUS'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text('O Sistema Único de Saúde (SUS) é um sistema de saúde público que garante à população do país, brasileiros ou não, o acesso integral, universal e gratuito aos serviços de saúde. O SUS, além de realizar diagnósticos e tratamento de doenças, também atua de forma multidisciplinar, impactando diretamente na qualidade de vida dos cidadãos. A sua rede abrange ações e serviços desde a atenção primária aos serviços de vigilância em saúde.',style: TextStyle(fontSize: 20)),SizedBox(height: 20,),
            Text('A porta de entrada do SUS são as Unidades Básicas de Saúde (UBS), unidades responsáveis por cuidar de você e da sua família. Elas fazem parte da Atenção Primária à Saúde, na qual é realizado o contato inicial para prevenção de doenças, agendamentos de consultas e exames básicos. A partir daí, o usuário segue o cuidado de sua saúde, de acordo com a necessidade e complexidade do seu caso.',style: TextStyle(fontSize: 20,),),SizedBox(height: 20,),
            Text('A Saúde Digital vem mudando a maneira de se organizar e ofertar serviços de saúde em todo o mundo. No Brasil, ela deve fortalecer os princípios e as diretrizes do SUS, colocando as necessidades dos cidadãos e cidadãs no centro. O Meu SUS Digital é uma das formas de utilizar tecnologias digitais para resolver problemas e melhorar a vida das pessoas, engajando pacientes e cidadãos a adotar hábitos saudáveis e gerenciar seu cuidado de saúde, da sua família e da sua comunidade.',style: TextStyle(fontSize: 20),),SizedBox(height: 20,),
            Text('Precisa de ajuda? Disque 136 e fale com a Ouvidoria-Geral do SUS.',style: TextStyle(fontSize: 25),),
            ],
          ),
        )
      ),
    );
  }
}