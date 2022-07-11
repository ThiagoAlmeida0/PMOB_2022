import 'package:flutter/material.dart';
import 'package:pmob_22/screens/subjects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF468189),
        appBar: AppBar(
          backgroundColor: Color(0xFF468189), // cor da app bar
          title: Center(
            // o título é o título da appbar e o center serva para centralizar o texto
            child: Text(
                "Tela Inicial", // o child é o widget que vai ficar dentro do center, text que permite escrever um texto
                style: TextStyle(
                    fontSize: 30,
                    color: Colors
                        .white)), // o style permite mudar o tamanho e a cor do texto do Text
          ),
          elevation: 0,
        ),
        body: Container(
            // o body é o corpo do aplicativo, o container é como se fosse o pano de fundo da tela aonde a gente vai criar o aplicativo
            width: double
                .infinity, // essa propriedade width é a largura do container, que eu coloquei como infinita
            color: Color(0xFFf7f7f2), // aqui é definida a cor do container
            child: Column(
              // o column vai ser o filho do container nele começaremos a contruir a tela e criar em sentido vertical a tela
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top:
                          20.0), // o padding permetie modicar a posição do container nesse caso foi usado .only para falar que só queremos modificar a posição do container na parte de cima
                  child: Container(
                    // container é a linha verda no iicio da tela
                    height: 5, // aqui defini a altura do container
                    width: 30, // largarua do container
                    decoration: BoxDecoration(
                      // decoration que permite customizar o container
                      borderRadius: BorderRadius.circular(
                          50), // border radius permite mudar a borda do container
                      color: Color(0xff77aca2), // mudei a cor do container
                    ),
                  ),
                ),
                Padding(
                  // serve para alinha o container
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    // a row serve para alinha os widgets horizontalmente dentro do container
                    children: [
                      Container(
                        // o container serve para criar o texto
                        width: 250, //  define largura do container
                        height: 100, // aqui a altura
                        child: Column(
                          // a column vai servir para colcoar um texto abaixo do outro
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // essa proprieda faz com o que a coluna começe no lado esquerdo no container
                          children: [
                            Text(
                              // texto e si
                              "   Olá,", // o texto
                              style: TextStyle(
                                  // o style permite customizar o texto
                                  fontSize: 50.00,
                                  color: Color(
                                      0xff477b72)), // aqui tá sendo definifo o tamanho e cor do texto
                            ),
                            Text(
                              "            Nome do Usuário",
                              style: TextStyle(color: Color(0xff468189)),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        // utilizei o widget de icone,
                        Icons.account_circle, // aqui foi definido o ícone
                        size: 100, // define o tamnaho do icone
                        color: Color(0xff477b72), // aqui a cor do icone
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: SizedBox(
                    // colocamos o botão no sized box para modificar a altura e largura dele
                    height: 70,
                    width: 320,
                    child: ElevatedButton(
                      // aqui é criado o botão
                      style: ElevatedButton.styleFrom(
                          // o style serve bara customizar o botão
                          primary: Color(
                              0xFF9dbebb), // aqui foi mudada a cor primária dele
                          shape: RoundedRectangleBorder(
                            // shape muda a forma. RoundedRectangleBorder serve para informar o tipo da forma
                            borderRadius: BorderRadius.circular(
                                5), // aqui eu defino a forma da borda como algo circular
                          )),
                      onPressed: () {
                        Navigator.of(context).push(
                            // o navigator ele para a navegar pelo código, o .push ele vai fazeer vc para a próxima rota
                            MaterialPageRoute(
                                builder: (context) =>
                                    SubjectsScreen()) // aqui é definido a rota, que no caso é a tela Subjext Screen
                            );
                      },
                      child: Text(
                        "Matérias",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Row( // para colocar o icone e botão ao lado do outro
                  crossAxisAlignment: CrossAxisAlignment.center, //para centralizar o conteudo da row
                  children: [
                    Padding( // coloa margens no icone
                      padding: const EdgeInsets.only( // aqui é definidos as margens
                        left: 50, //margem esquerda
                        right: 17, // margem direita
                      ),
                      child: Icon( // aqui é o icone
                        Icons.school_outlined, // o tipo do ícone
                        size: 100, // o tamanho
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
                        primary: Color(0xFF9dbebb),
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
