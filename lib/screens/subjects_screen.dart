import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmob_22/screens/math_matters.dart';

import 'home_screen.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  State<SubjectsScreen> createState() => _SubjectsScreen();
}

class _SubjectsScreen extends State<SubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF7F7F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFF468189),
          toolbarHeight: 80,
          title: Center(
            child: Text('Matérias',
                style: TextStyle(
                  fontSize: 25
             ),
            ),
          ) ,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => MathMatters()));
                    },
                    child: Container( // matematica
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Color(0xFF77ACA2),
                        ),
                      height: 89.0 ,
                      width: 107.0 ,
                      child: const Icon(
                        FontAwesomeIcons.squareRootVariable,
                        size: 40,
                        color: Colors.white,
                        ),
                      ),
                  ),
                  Container( //fisica
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF77ACA2),
                      ),
                    height: 89.0 ,
                    width: 107.0 ,
                    child: const Icon(
                      FontAwesomeIcons.atom, // deixar light
                      size: 50,
                      color: Colors.white,
                     
                      ),
                  ),
               ],// children
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.center,

                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 50.0, left: 80),
                    child: Text("Matemática",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF353D49),
                      ),
                    ),
                  ),
                  Text("Física",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(//quimica
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF77ACA2),
                        ),
                    height: 89.0 ,
                    width: 107.0 ,
                    child: const Icon(
                      FontAwesomeIcons.flaskVial,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container( //biologia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF77ACA2),
                      ),
                    height: 89.0 ,
                    width: 107.0 ,
                    child: const Icon(
                      FontAwesomeIcons.dna,
                      size: 40,
                      color: Colors.white,
                      ),
                  ),
                ], // children
              ),
               Row( // texto com o nome das matérias
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Química",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                  Text("Biologia",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Container( //historia
                   decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF77ACA2),
                    ),
                  height: 89.0 ,
                  width: 107.0 ,
                  child: const Icon(
                    Icons.history_edu,
                    size: 60,
                    color: Colors.white,
                    ),
                  ),
                Container( //geografia
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF77ACA2),
                    ),
                  height: 89.0 ,
                  width: 107.0 ,
                  child: const Icon(
                     FontAwesomeIcons.globe,
                    size: 40,
                    color: Colors.white,
                    ),     
                ),
                ],// children
              ),
               Row( //texto com o nome das matérias
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("História",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                  Text("Geografia",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Container( // filosofia
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF77ACA2),
                      ),
                    height: 89.0 ,
                    width: 107.0 ,
                    child: const Icon(
                      FontAwesomeIcons.buildingColumns,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                Container(//sociologia
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xFF77ACA2),
                    ),
                  height: 89.0 ,
                  width: 107.0 ,
                  child: const Icon(
                     FontAwesomeIcons.peopleGroup,
                    size: 40,
                    color: Colors.white,
                    ),
                ),
                ],// children
              ),
               Row( //texto com o nome das matérias
                //mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Filosofia",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF353D49),
                    ),
                  ),
                  Text("Sociologia",
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF468189),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Matéria',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
          selectedItemColor: Colors.white),
        );
  }
}
