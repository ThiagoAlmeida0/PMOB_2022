import 'package:flutter/material.dart';
import 'package:pmob_22/screens/question_screen.dart';

class MathMatters extends StatefulWidget {
  MathMatters({Key? key}) : super(key: key);

  @override
  _MathMattersState createState() => _MathMattersState();
}

class _MathMattersState extends State<MathMatters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Color(0xFF468189),
        title: Center(child: Text("Matemática")),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){            
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => QuestionScreen()));
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
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
                color: Color(0xFF468189),
                thickness: 2,
                indent: 14,
                endIndent: 14,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF468189),
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