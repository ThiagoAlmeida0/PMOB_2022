import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmob_22/ui/widgets/buttons/rounded_app_button.dart';
import 'package:pmob_22/utils/constants.dart';
import 'package:pmob_22/data/userDao.dart';
import 'package:pmob_22/domain/user.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert';

import '../../../data/address_api.dart';
import '../../../domain/address.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _NewUserState();
}

class _NewUserState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  

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
        child: Form(
          key: _formKey,
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
                controller: emailController,
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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo senha obrigatório';
                  } else if (value.length < 6) {
                    return 'Senha deve possuir no mínimo 6 dígitos';
                  }

                  return null;
                },
                controller: passwordController,
                obscureText: true,
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
                  Text("  Nome",
                      style: TextStyle(fontSize: 20, color: textColor))
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: nameController,
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
                controller: gradeController,
                decoration: const InputDecoration(
                  hintText: "Insira sua série aqui",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: textFieldBackground,
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    FontAwesomeIcons.house,
                    color: iconColor,
                  ),
                  Text("  CEP",
                      style: TextStyle(fontSize: 20, color: textColor))
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: cepController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }

                  return null;
                },
                onEditingComplete: onEditingComplete,
                decoration: const InputDecoration(
                  hintText: "Insira apenas os números do seu CEP",
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: textFieldBackground,
                ),
              ),

               TextFormField(
                controller: addressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo obrigatório';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Endereço",
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
                  onTap: onTap,
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
      ),
    );
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  onTap() async {
    if (_formKey.currentState!.validate()) {
      String emailDigitado = emailController.text;
      String passwordDigitado = passwordController.text;
      String nomeDigitado = nameController.text;
      String serieDigitada = gradeController.text;

      /// SALVAR USUARIO
      User userCriado = User(
          email: emailDigitado,
          senha: passwordDigitado,
          nome: nomeDigitado,
          serie: serieDigitada);
      await UserDao().salvarUser(user: userCriado);
      showSnackBar('Usuário foi salvo com sucesso!');
      Navigator.of(context).pushReplacementNamed("/home");
    } else {
      showSnackBar("Erro na validação");
    }

  }
  Future<void> onEditingComplete() async {
    Address address = await AddressApi().findAddressByCep(cepController.text);

    addressController.text = address.logradouro;
  }
  
}
