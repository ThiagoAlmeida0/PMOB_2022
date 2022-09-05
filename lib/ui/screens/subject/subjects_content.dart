import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmob_22/utils/constants.dart';

class SubjectContent extends StatefulWidget {
  const SubjectContent({Key? key}) : super(key: key);

  @override
  State<SubjectContent> createState() => _SubjectContent();
}

class _SubjectContent extends State<SubjectContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F2),
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 80,
        title: const Center(
          child: Text(
            'Matérias',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          padding: const EdgeInsets.all(50),
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/mathM");
              },
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      // matematica
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: subjectBackgroundColor,
                      ),
                      height: 89.0,
                      width: 130.0,
                      child: const Icon(
                        FontAwesomeIcons.squareRootVariable,
                        size: 40,
                        color: iconColor,
                      ),
                    ),
                  ),
                  const Text(
                    "Matemática",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //fisica
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.atom, // deixar light
                      size: 50,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Física",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //quimica
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.flaskVial,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Química",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //biologia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.dna,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Biologia",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //historia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      Icons.history_edu,
                      size: 60,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Biologia",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //geografia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.globe,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Geografia",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    // filosofia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.buildingColumns,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Filosofia",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    //sociologia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: subjectBackgroundColor,
                    ),
                    height: 89.0,
                    width: 130.0,
                    child: const Icon(
                      FontAwesomeIcons.peopleGroup,
                      size: 40,
                      color: iconColor,
                    ),
                  ),
                ),
                const Text(
                  "Sociologia",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF353D49),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
