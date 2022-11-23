import 'package:flutter/material.dart';
import 'package:pmob_22/domain/questions.dart';

import '../../../utils/constants.dart';

class QuestionBody extends StatelessWidget {
  final Questoes quest;
  const QuestionBody({
    Key? key,
    required this.quest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(quest.numero,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Text(quest.banca,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(quest.enunciado, 
          style: const TextStyle(fontSize: 22)),
          const Divider(
            color: mainColor,
            thickness: 2,
            indent: 7,
            endIndent: 7,
          ),
          Text(quest.a,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(quest.b,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(quest.c,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(quest.d,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(quest.e,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
