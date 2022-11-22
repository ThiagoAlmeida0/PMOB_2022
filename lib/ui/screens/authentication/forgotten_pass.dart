import 'package:flutter/material.dart';
import 'package:pmob_22/utils/constants.dart';

class ForgottenPassword extends StatefulWidget {
  const ForgottenPassword({Key? key}) : super(key: key);

  @override
  State<ForgottenPassword> createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> {

  final _formKey = GlobalKey<FormState>();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mainColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: mainColor,
          title: Center(
            child: Text("ESQUECI A SENHA",
                style: TextStyle(fontSize: 40, color: Colors.white)),
          ),
          elevation: 0,
        ),
      ),
      body: Container(
        color: mainColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "O código de verificação foi enviado para o seu email",
                  style: TextStyle(fontSize: 11, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 8.0, bottom: 30),
              child: Text("i******@gmail.com",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Código de Verificação",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 90.0, right: 8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10))),
                ),
              ],
            ),
            Text("Send Verification Code Again",
                style: TextStyle(fontSize: 10, color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.lock_outline,
                    color: iconColor,
                  ),
                  Text("  E-mail",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Insira nova senha aqui",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
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
                child: Text("Redefinir senha"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("-- Ou --",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Ainda não tem conta?",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
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
    );
  }
}
