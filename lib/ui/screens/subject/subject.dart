import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmob_22/ui/screens/home/home_screen.dart';
import 'package:pmob_22/ui/screens/subject/subjects_content.dart';
import 'package:pmob_22/utils/constants.dart';


class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  State<SubjectsScreen> createState() => _SubjectsScreen();
}

class _SubjectsScreen extends State<SubjectsScreen> {
  int selectedIndex = 1;
  List screens = const[
    HomeScreen(),
    SubjectContent(),
    Center(child: Text(
      'Work in on Progress', style: TextStyle(
        fontSize: 40,
      ),
    ),)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mainColor,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Matérias",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
            ),
        ],
        onTap: (index){
          if (index == 0){
            Navigator.of(context).pushReplacementNamed("/home");
          }
          else if(index == 2){
           Navigator.of(context).pushReplacementNamed("/perfil");
          }
          else{
          setState(() {
            selectedIndex = index;
          });
          }
        },
      ),
    );
  }
}
