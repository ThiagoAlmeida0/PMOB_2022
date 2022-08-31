import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({ Key? key }) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color(0xFF468189), // cor da app bar
          title: Center(
            // o título é o título da appbar e o center serva para centralizar o texto
            child: Text(
                "Questões", // o child é o widget que vai ficar dentro do center, text que permite escrever um texto
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white)), // o style permite mudar o tamanho e a cor do texto do Text
          ),   
      )
    );
  }
}