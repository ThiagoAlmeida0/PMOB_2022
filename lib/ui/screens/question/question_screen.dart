import 'package:flutter/material.dart';
import 'package:pmob_22/data/BD.dart';
import 'package:pmob_22/utils/constants.dart';

import '../../../domain/questions.dart';
import '../../widgets/question_body.dart';

class QuestionScreen extends StatefulWidget {
  late Questoes materia;

  QuestionScreen({Key? key}) : super(key: key);


  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F2),
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 80,
        title: const Center(
          child: Text("Questão",
              style: TextStyle(fontSize: 30, color: Colors.white)),
        ),
      ),
      body: ListView(
        children: [
          buildListView()
        ],
      ),
    );
  }

   buildListView() {
    Future<List<Questoes>> futureList = QuestoesBD().questao();

    return FutureBuilder<List<Questoes>>(
      future: futureList,
      builder: (context, snapshot) {

        if(snapshot.hasData){
          List<Questoes> subjectsList = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: subjectsList.length,
            itemBuilder: (context, index) {
              return QuestionBody(
                quest: subjectsList[index],
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
   }
}
