import 'package:flutter/material.dart';
import 'package:pmob_22/ui/widgets/buttons/icon_rounded_buttom.dart';
import 'package:pmob_22/utils/constants.dart';

import '../../widgets/buttons/rounded_app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildLogin(context);
  }

  Scaffold _buildLogin(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
    backgroundColor: mainColor,
    appBar: PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: AppBar(
        backgroundColor: mainColor,
        title: const Center(
          child: Text("ENTRAR",
              style: TextStyle(fontSize: 40, color: textColor)),
        ),
        elevation: 0,
      ),
    ),
    body: Padding(
      padding:
          const EdgeInsets.only(top: 10.0, bottom: 30, left: 50, right: 50),
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.mail_outline,
                color: iconColor,
              ),
              Text("  E-mail",
                  style: TextStyle(fontSize: 20, color: textColor))
            ],
          ),
          const SizedBox(height: 5),
           TextFormField(
            decoration: const InputDecoration(
              hintText: "Insira seu endereço de email aqui",
              border: OutlineInputBorder(),
              filled: true,
              fillColor: textFieldBackground,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(
                Icons.lock_outline_sharp,
                color: iconColor,
              ),
              Text("Insira sua senha aqui",
                  style: TextStyle(fontSize: 20, color: textColor))
            ],
          ),
          const SizedBox(height: 5),
           TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Insira sua senha aqui",
              border: OutlineInputBorder(),
              filled: true,
              fillColor: textFieldBackground,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/fPass");
                },
                child: const Text("   Esqueceu a senha? ",
                    style: TextStyle(fontSize: 15, color: textColor)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 55, right: 55),
            child: RoundedAppButton(
              buttonColor: ButtonColor,
              buttonName: "Entrar",
              height: 50,
              width: 150,
              textColor: Colors.white,
              textSize: 20,
              buttonRouding: 50,
              onTap: () {
                Navigator.of(context).pushNamed("/home");
              },
            ),
          ),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("   - Ou -",
                  style: TextStyle(fontSize: 20, color: textColor)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Conecte com",
                  style: TextStyle(fontSize: 20, color: textColor)),
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
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Ainda não tem conta?",
                  style: TextStyle(fontSize: 20, color: textColor)),
            ],
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 35, right: 35),
            child: RoundedAppButton(
              buttonColor: ButtonColor,
              buttonName: "Crie uma conta",
              height: 50,
              width: 150,
              textColor: Colors.white,
              textSize: 15,
              buttonRouding: 50,
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/register");
              },
            ),
          ),
        ],
      ),
    ),
  );
  }
}
