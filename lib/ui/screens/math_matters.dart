import 'package:flutter/material.dart';
import 'package:pmob_22/ui/screens/question_screen.dart';
import 'package:pmob_22/utils/constants.dart';

class MathMatters extends StatefulWidget {
  const MathMatters({Key? key}) : super(key: key);

  @override
  _MathMattersState createState() => _MathMattersState();
}

class _MathMattersState extends State<MathMatters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Center(child: Text("Matemática")),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){            
                  Navigator.of(context).pushNamed("/question");
                },
                child: ListTile(
                  title: Text ('Potenciação',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('Radiciação',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('MMC e MDC',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('Regra de três',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text ('Simples e composta',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('Produtos notáveis',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('Função afim',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
              ListTile(
                title: Text ('Função quadrática',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Divider(
                color: mainColor,
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: mainColor,
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