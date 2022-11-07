import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmob_22/ui/widgets/buttons/rounded_app_button.dart';
import 'package:pmob_22/utils/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _NewUserState();
}

class _NewUserState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSize _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100.0),
      child: AppBar(
        backgroundColor: mainColor,
        title: const Center(
          child: Text("Cadastro",
              style: TextStyle(fontSize: 40, color: textColor)),
        ),
        elevation: 0,
      ),
    );
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10.0, bottom: 30, left: 50, right: 50),
        child: Column(
          children: [
            const SizedBox(height: 15),
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
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Insira seu endereço de email aqui",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: textFieldBackground,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.lock_outline_sharp,
                  color: iconColor,
                ),
                Text("  Senha",
                    style: TextStyle(fontSize: 20, color: textColor))
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Insira sua senha aqui",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: textFieldBackground,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.person,
                  color: iconColor,
                ),
                Text("  Nome", style: TextStyle(fontSize: 20, color: textColor))
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Insira seu nome aqui",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: textFieldBackground,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  FontAwesomeIcons.penClip,
                  color: iconColor,
                ),
                Text("  Série",
                    style: TextStyle(fontSize: 20, color: textColor))
              ],
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Insira sua série aqui",
                border: OutlineInputBorder(),
                filled: true,
                fillColor: textFieldBackground,
              ),
            ),
            const SizedBox(height: 15),
            RoundedAppButton(
                buttonName: "Registrar",
                buttonColor: ButtonColor,
                width: 150,
                height: 50,
                onTap: () {},
                textColor: textColor,
                textSize: 20,
                buttonRouding: 50),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("------ Já tem conta? ------",
                    style: TextStyle(fontSize: 15, color: textColor)),
              ],
            ),
            const SizedBox(height: 25),
            RoundedAppButton(
                buttonName: "Ir para Login",
                buttonColor: ButtonColor,
                width: 150,
                height: 50,
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/login");
                },
                textColor: textColor,
                textSize: 20,
                buttonRouding: 50)
          ],
        ),
      ),
    );
  }
}
