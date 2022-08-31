import 'package:flutter/material.dart';
import 'package:pmob_22/ui/screens/subjects_screen.dart';
import 'package:pmob_22/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Center(
            child: Text("Tela Inicial",
                style: TextStyle(fontSize: 30, color: textColor)),
          ),
          elevation: 0,
        ),
        body: Container(
            width: double.infinity,
            color: Color(0xFFf7f7f2),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 5,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff77aca2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "   Olá,",
                              style: TextStyle(
                                  fontSize: 50.00, color: homeTextColor),
                            ),
                            Text(
                              "            Nome do Usuário",
                              style: TextStyle(color: homeTextColor),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 100,
                        color: homeIconColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: SizedBox(
                    height: 70,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SubjectsScreen()));
                      },
                      child: Text(
                        "Matérias",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 17,
                      ),
                      child: Icon(
                        Icons.school_outlined,
                        size: 100,
                        color: homeIconColor,
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: ButtonColor2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        onPressed: () {},
                        child: Text(
                          "Simulados",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: ButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Análise de desempenho",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    height: 30,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ButtonColor2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () {},
                      child: Text("Meus dados pessoais"),
                    ),
                  ),
                ),
                Icon(
                  Icons.menu_book_sharp,
                  size: 125,
                  color: homeIconColor,
                )
              ],
            )));
  }
}
