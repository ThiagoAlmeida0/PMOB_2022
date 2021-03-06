import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pmob_22/screens/forgotten_pass.dart';
import 'package:pmob_22/screens/home_screen.dart';
import 'package:pmob_22/widgets/buttons/icon_rounded_buttom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF468189),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color(0xFF468189),
          title: Center(
            child: Text("ENTRAR",
                style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Card(
            margin: EdgeInsets.only(top: 0),
            color: Color(0xFF468189),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 30, left: 50, right: 50),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.mail_outline,
                        color: Colors.white,
                      ),
                      Text("  E-mail",
                          style: TextStyle(fontSize: 20, color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Insira seu endereço de email aqui",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.white,
                      ),
                      Text("Insira sua senha aqui",
                          style: TextStyle(fontSize: 20, color: Colors.white))
                    ],
                  ),
                  SizedBox(height: 5),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Insira sua senha aqui",
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => ForgottenPassword()));
                        },
                        child: Text("   Esqueceu a senha? ",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF9dbebb),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                      },
                      child: Text("Entrar"),
                    ),
                  ),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("   - Ou -",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Conecte com",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconRoundedButtom(
                          imagePath: "assets/images/glogo.png",
                          onTap: () {},
                        ),
                        IconRoundedButtom(
                          imagePath: "assets/images/logo.png",
                          onTap: () {},
                        ),
                          IconRoundedButtom(
                         imagePath: "assets/images/ret.png",
                         onTap: () {
                          },
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Ainda não tem conta?",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 25),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFF9dbebb),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      onPressed: () {},
                      child: Text("Crie uma conta"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
