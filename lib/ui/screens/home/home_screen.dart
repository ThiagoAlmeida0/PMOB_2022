import 'package:flutter/material.dart';
import 'package:pmob_22/utils/constants.dart';
import 'package:pmob_22/data/userDao.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: mainColor,
        appBar: AppBar(
          backgroundColor: mainColor,
          toolbarHeight: 80,
          title: const Center(
            child: Text("Tela Inicial",
                style: TextStyle(fontSize: 30, color: textColor)),
          ),
          elevation: 0,
        ),
        body: Container(
            color: Color(0xFFf7f7f2),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 180, right: 180),
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: mainColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: [
                       SizedBox(
                        width: 250,
                        height: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "   Olá,",
                              style: TextStyle(
                                  fontSize: 50.00, color: homeTextColor),
                            ),
                            Text(
                              "            Nome do Usuário", // trocar isso aqui para o nome de usuário
                              style: TextStyle(color: homeTextColor),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.account_circle,
                        size: 100,
                        color: homeIconColor,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0, left: 35.0, right: 35.0, bottom: 15.0),
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
                        Navigator.of(context).pushNamed("/subScreen");
                      },
                      child: const Text(
                        "Matérias",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
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
                      width: 190,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: ButtonColor2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        onPressed: () {},
                        child: const Text(
                          "Simulados",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
                  child: SizedBox(
                    height: 70,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      onPressed: () {},
                      child: const Text(
                        "Análise de desempenho",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 10, left: 35, right: 35),
                  child: SizedBox(
                    height: 30,
                    width: 320,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ButtonColor2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () {
                          Navigator.of(context).pushNamed("/perfil");

                      },
                      child: const Text("Meus dados pessoais"),
                    ),
                  ),
                ),
                const Icon(
                  Icons.menu_book_sharp,
                  size: 125,
                  color: homeIconColor,
                )
              ],
            ))
        );
  }
}
