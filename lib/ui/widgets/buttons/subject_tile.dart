import 'package:flutter/material.dart';
import 'package:pmob_22/domain/mathSubject_domain.dart';

import '../../../utils/constants.dart';

class SubjectTile extends StatelessWidget {
  final MathSubjet materia;
  const SubjectTile({
    Key? key,
    required this.materia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (materia.id == "11")
            GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/question");
            },
            child: const ListTile(
              title: Text(
                'Potenciação',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        if (materia.id != "11")
        ListTile(
          title: Text(
            materia.subjectName,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          color: mainColor,
          thickness: 2,
          indent: 14,
          endIndent: 14,
        )
      ],
    );
  }
}
