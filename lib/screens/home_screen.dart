import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:pmob_22/screens/login_screen.dart';
import 'package:pmob_22/screens/subjects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF468189),
        appBar: AppBar(
          backgroundColor: Color(0xFF468189),
          title: Center(
            child: Text("Tela Inicial",
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ),
          elevation: 0,
        ),
        body: Container(
            width: double.infinity,
            // height: double.infinity,
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
                                  fontSize: 50.00, color: Color(0xff477b72)),
                            ),
                            Text("            Nome do Usuário",
                            style: TextStyle(color: Color(0xff468189)),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Color(0xff477b72),
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
                          primary: Color(0xFF9dbebb),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      onPressed: () {
                          Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SubjectsScreen())
                        );
                      },
                      child: Text("Matérias",
                            style: TextStyle(
                              fontSize: 40
                            ),
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
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff477b72),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        onPressed: () {},
                        child: Text("Simulados",
                            style: TextStyle(
                              fontSize: 30
                            ),),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF9dbebb),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                    onPressed: () {},
                    child: Text("Análise de desempenho",
                            style: TextStyle(
                              fontSize: 25
                            ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: SizedBox(
                    height: 30,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF468189),
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
                  color: Color(0xff385e72),
                )
              ],
            )));
  }
}
