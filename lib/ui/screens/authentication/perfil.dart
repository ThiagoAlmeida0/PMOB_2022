import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pmob_22/data/userDao.dart';
import 'package:flutter/material.dart';
import 'package:pmob_22/ui/widgets/buttons/rounded_app_button.dart';
import 'package:pmob_22/utils/constants.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        toolbarHeight: 80,
        title: const Center(
          child: Text(
            'Perfil',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFf7f7f2),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 30, left: 50, right: 50),
          child: Column(
            children: [
              Text("Minha informações pessoais"),
              Row(
                children: [Text("Nome:"), Text("")],
              ),
              Row(
                children: [Text("E-mail:"), Text("E-mail aqui")],
              ),
              Row(
                children: [Text("Série:"), Text("série aqui")],
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/login");
                  },
                  child: Text("Logout"))
            ],
          ),
        ),
      ),
    );
  }
}
