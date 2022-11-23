import 'package:flutter/material.dart';
import 'package:pmob_22/ui/widgets/buttons/subject_tile.dart';
import 'package:pmob_22/utils/constants.dart';

import '../../../data/mathSubjectDB.dart';
import '../../../domain/mathSubject_domain.dart';

class MathMatters extends StatefulWidget {
  const MathMatters({Key? key}) : super(key: key);

  @override
  _MathMattersState createState() => _MathMattersState();
}

class _MathMattersState extends State<MathMatters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f7f2),
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 80,
        title: const Center(
            child: Text("Matemática",
                style: TextStyle(fontSize: 30, color: textColor))),
      ),
      body: ListView(
        children: [
          buildListView()
        ],
      ),
    );
  }

  buildListView() {
    Future<List<MathSubjet>> futureList = SubjectDao().listaDeSubjects();

    return FutureBuilder<List<MathSubjet>>(
      future: futureList,
      builder: (context, snapshot) {

        if(snapshot.hasData){
          List<MathSubjet> subjectsList = snapshot.data ?? [];

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: subjectsList.length,
            itemBuilder: (context, index) {
              return SubjectTile(
                materia: subjectsList[index],
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );


  }
}
